#!/bin/bash
# ------------------------------------------------------------------------
#
# Copyright 2016 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

# ------------------------------------------------------------------------
set -e

product_name=wso2is
module_name=wso2is_km
image_name=wso2is-km

prgdir=$(dirname "$0")
script_path=$(cd "$prgdir"; pwd)
echo $script_path
common_folder=$(cd "${script_path}/common/scripts/"; pwd)
echo $common_folder
bash ${common_folder}/docker-build.sh -n ${product_name} -d ${script_path} \
     -m ${module_name} -t ${image_name} $*
