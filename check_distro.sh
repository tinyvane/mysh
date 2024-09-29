#!/bin/bash
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
#
# Author: tinyvane
# Contact: tinyvane@gmail.com

# 检查 /etc/os-release 文件
if [ -f /etc/os-release ]; then
    # 获取 ID 和 VERSION_ID 字段
    distro=$(grep ^ID= /etc/os-release | cut -d'=' -f2 | tr -d '"')
    version=$(grep ^VERSION_ID= /etc/os-release | cut -d'=' -f2 | tr -d '"')

    # 判断发行版类型
    case "$distro" in
        centos)
            echo "This is CentOS, version $version"
            ;;
        debian)
            echo "This is Debian, version $version"
            ;;
        ubuntu)
            echo "This is Ubuntu, version $version"
            ;;
        fedora)
            echo "This is Fedora, version $version"
            ;;
        arch)
            echo "This is Arch Linux"
            ;;
        opensuse)
            echo "This is openSUSE, version $version"
            ;;
        manjaro)
            echo "This is Manjaro, version $version"
            ;;
        redhat)
            echo "This is Red Hat Enterprise Linux (RHEL), version $version"
            ;;
        alpine)
            echo "This is Alpine Linux, version $version"
            ;;
        *)
            echo "Unknown distribution: $distro, version $version"
            ;;
    esac
else
    echo "/etc/os-release file not found!"
fi
