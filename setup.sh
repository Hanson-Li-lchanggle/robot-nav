# Create the conda environment
conda_env_name=kin

conda create -n $conda_env_name python=3.7 cmake=3.14.0 -y
conda install -n $conda_env_name \
  habitat-sim=0.2.3 withbullet headless pytorch cudatoolkit=11.3 \
  -c pytorch -c nvidia -c conda-forge -c aihabitat -y

# Install habitat-lab
git clone git@github.com:facebookresearch/habitat-lab.git
cd habitat-lab
git checkout v0.2.3
conda activate $conda_env_name
pip install -e habitat-lab
pip install -e habitat-baselines
