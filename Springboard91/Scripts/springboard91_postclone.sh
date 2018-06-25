#!/bin/sh

#  springboard91_postclone.sh
#  Springboard91
#
#  Created by Vinod pandey on 21/06/18.
#  Copyright © 2018 Vinod pandey. All rights reserved.

# Example: Clone Parse example project
git clone https://github.com/example/ParseCloudCode

# Example: Expose the commit SHA accessible through $GIT_REVISION_SHA
# Environment Variable
export GIT_REVISION_SHA=$(git rev-parse HEAD)

# Example: Expose the commit author & email through the $GIT_REVISION_AUTHOR
# in the following format: Author Name <author@example.com>
export GIT_REVISION_AUTHOR=$(git log -1 --pretty=format:"%an <%ae>")
