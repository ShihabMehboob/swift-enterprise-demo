#!/bin/bash

##
# Copyright IBM Corporation 2017
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
# limitations under the License.
##

set -e

# Delete services first
echo "Deleting services..."
cf delete-service -f "SwiftEnterpriseDemo-Alert"
echo "Services deleted."

# Create services
echo "Creating services..."
cf create-service alertnotification authorizedusers "SwiftEnterpriseDemo-Alert"
echo "Services created."
