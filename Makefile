PLAN_FILE=plan.terraform
prefix=$(notdir ${CURDIR})

init:
	terraform init -backend-config="bucket=${TF_VAR_s3_bucket}" -backend-config="region=${TF_VAR_region}" -backend-config="key="$(prefix)"/terraform.tfstate"