# load_env.sh
set -a
source .env
set +a
terraform plan
