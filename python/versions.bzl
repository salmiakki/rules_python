# Copyright 2022 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""The Python versions we use for the toolchains.
"""

# Values returned by https://bazel.build/rules/lib/repository_os.
MACOS_NAME = "mac os"
LINUX_NAME = "linux"
WINDOWS_NAME = "windows"

DEFAULT_RELEASE_BASE_URL = "https://github.com/indygreg/python-build-standalone/releases/download"

# When updating the versions and releases, run the following command to get
# the hashes:
#   bazel run //python/private:print_toolchains_checksums
#
# buildifier: disable=unsorted-dict-items
TOOL_VERSIONS = {
    "3.8.10": {
        "url": "20210506/cpython-{python_version}-{platform}-pgo+lto-20210506T0943.tar.zst",
        "sha256": {
            "x86_64-apple-darwin": "8d06bec08db8cdd0f64f4f05ee892cf2fcbc58cfb1dd69da2caab78fac420238",
            "x86_64-unknown-linux-gnu": "aec8c4c53373b90be7e2131093caa26063be6d9d826f599c935c0e1042af3355",
        },
        "strip_prefix": "python",
    },
    "3.8.12": {
        "url": "20220227/cpython-{python_version}+20220227-{platform}-{build}.tar.gz",
        "sha256": {
            "aarch64-apple-darwin": "f9a3cbb81e0463d6615125964762d133387d561b226a30199f5b039b20f1d944",
            # no aarch64-unknown-linux-gnu build available for 3.8.12
            "x86_64-apple-darwin": "f323fbc558035c13a85ce2267d0fad9e89282268ecb810e364fff1d0a079d525",
            "x86_64-pc-windows-msvc": "4658e08a00d60b1e01559b74d58ff4dd04da6df935d55f6268a15d6d0a679d74",
            "x86_64-unknown-linux-gnu": "5be9c6d61e238b90dfd94755051c0d3a2d8023ebffdb4b0fa4e8fedd09a6cab6",
        },
        "strip_prefix": "python",
    },
    "3.8.13": {
        "url": "20220502/cpython-{python_version}+20220502-{platform}-{build}.tar.gz",
        "sha256": {
            "aarch64-apple-darwin": "ba604867d8c6e0a1a85b1be789cad4c69af8a1699043f51e8a85998b55979127",
            # no aarch64-unknown-linux-gnu build available for 3.8.13
            "x86_64-apple-darwin": "52e3541f41d165002e19a60e11dcc145e90ffe1fe8a6f94b17d5b72a674674ea",
            "x86_64-pc-windows-msvc": "1435b77b4d89f2a99719918fcf917a67cd711cad46f67516bed2462d18fbefb3",
            "x86_64-unknown-linux-gnu": "884c6c4605c11685164237bad5f8f2773edcf3abb0637a83efa7912a54f658b3",
        },
        "strip_prefix": "python",
    },
    "3.9.10": {
        "url": "20220227/cpython-{python_version}+20220227-{platform}-{build}.tar.gz",
        "sha256": {
            "aarch64-apple-darwin": "ad66c2a3e7263147e046a32694de7b897a46fb0124409d29d3a93ede631c8aee",
            "aarch64-unknown-linux-gnu": "12dd1f125762f47975990ec744532a1cf3db74ad60f4dfb476ca42deb7f78ca4",
            "x86_64-apple-darwin": "fdaf594142446029e314a9beb91f1ac75af866320b50b8b968181e592550cd68",
            "x86_64-pc-windows-msvc": "c145d9d8143ce163670af124b623d7a2405143a3708b033b4d33eed355e61b24",
            "x86_64-unknown-linux-gnu": "455089cc576bd9a58db45e919d1fc867ecdbb0208067dffc845cc9bbf0701b70",
        },
        "strip_prefix": "python",
    },
    "3.9.12": {
        "url": "20220502/cpython-{python_version}+20220502-{platform}-{build}.tar.gz",
        "sha256": {
            "aarch64-apple-darwin": "8dee06c07cc6429df34b6abe091a4684a86f7cec76f5d1ccc1c3ce2bd11168df",
            "aarch64-unknown-linux-gnu": "2ee1426c181e65133e57dc55c6a685cb1fb5e63ef02d684b8a667d5c031c4203",
            "x86_64-apple-darwin": "2453ba7f76b3df3310353b48c881d6cff622ba06e30d2b6ae91588b2bc9e481a",
            "x86_64-pc-windows-msvc": "3024147fd987d9e1b064a3d94932178ff8e0fe98cfea955704213c0762fee8df",
            "x86_64-unknown-linux-gnu": "ccca12f698b3b810d79c52f007078f520d588232a36bc12ede944ec3ea417816",
        },
        "strip_prefix": "python",
    },
    "3.10.2": {
        "url": "20220227/cpython-{python_version}+20220227-{platform}-{build}.tar.gz",
        "sha256": {
            "aarch64-apple-darwin": "1409acd9a506e2d1d3b65c1488db4e40d8f19d09a7df099667c87a506f71c0ef",
            "aarch64-unknown-linux-gnu": "8f351a8cc348bb45c0f95b8634c8345ec6e749e483384188ad865b7428342703",
            "x86_64-apple-darwin": "8146ad4390710ec69b316a5649912df0247d35f4a42e2aa9615bffd87b3e235a",
            "x86_64-pc-windows-msvc": "a1d9a594cd3103baa24937ad9150c1a389544b4350e859200b3e5c036ac352bd",
            "x86_64-unknown-linux-gnu": "9b64eca2a94f7aff9409ad70bdaa7fbbf8148692662e764401883957943620dd",
        },
        "strip_prefix": "python",
    },
    "3.10.4": {
        "url": "20220502/cpython-{python_version}+20220502-{platform}-{build}.tar.gz",
        "sha256": {
            "aarch64-apple-darwin": "2c99983d1e83e4b6e7411ed9334019f193fba626344a50c36fba6c25d4de78a2",
            "aarch64-unknown-linux-gnu": "d8098c0c54546637e7516f93b13403b11f9db285def8d7abd825c31407a13d7e",
            "x86_64-apple-darwin": "f2711eaffff3477826a401d09a013c6802f11c04c63ab3686aa72664f1216a05",
            "x86_64-pc-windows-msvc": "bee24a3a5c83325215521d261d73a5207ab7060ef3481f76f69b4366744eb81d",
            "x86_64-unknown-linux-gnu": "f6f871e53a7b1469c13f9bd7920ad98c4589e549acad8e5a1e14760fff3dd5c9",
        },
        "strip_prefix": "python",
    },
    "3.12.11": {
        "url": "20250808/cpython-{python_version}+20250808-{platform}-{build}.tar.gz",
        "sha256": {
            "aarch64-apple-darwin": "8792c4a84c364ab975feca0c27d3157a5435b7baab325a346ae56b223893b661",
            "aarch64-unknown-linux-gnu": "4d7ba5314fab02130d6538f074961ffbf61310cade9180e59026074f9a8939cb",
            "aarch64-pc-windows-msvc": "00bf7d7e8bcf5d1e9c4dfca0247d8e035147777cd57ee9d4c64dedca86b0a464",
            "ppc64le-unknown-linux-gnu": "2c862eb40a81549d9c11e6bf5a7f07c3406310b14e6a4d16dcdf1c4763ef7090",
            "riscv64-unknown-linux-gnu": "0bb729b95fabd49c7b495f7c44a9086e3970ea57daf66365741574bd36a17e81",
            "s390x-unknown-linux-gnu": "99e465882d217d24ac90e99fac8f32e6a644d0340ac05ee510fb5cdf53f0cfb8",
            "x86_64-apple-darwin": "e0c932709dafb05f00e528a7560ef8ee559ac82b75faca60dd1245bca1c1553f",
            "x86_64-pc-windows-msvc": "81214ef71964a40ec269a79067ca490d45298c350583bc3af0e5781451a05c3c",
            "x86_64-unknown-linux-gnu": "63d78840bf209af8da8f24e335d910f88387b892ca9187be571d481c071751bb",
            "x86_64-unknown-linux-musl": "d633d070780590aa03ac5575cd9d7b9e17682d80f14b400313c009c387cf706b",
        },
        "strip_prefix": "python",
    },
}

# buildifier: disable=unsorted-dict-items
MINOR_MAPPING = {
    "3.8": "3.8.13",
    "3.9": "3.9.12",
    "3.10": "3.10.4",
    "3.11": "3.11.11",
}

PLATFORMS = {
    "aarch64-apple-darwin": struct(
        compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:aarch64",
        ],
        os_name = MACOS_NAME,
        # Matches the value returned from:
        # repository_ctx.execute(["uname", "-m"]).stdout.strip()
        arch = "arm64",
    ),
    "aarch64-unknown-linux-gnu": struct(
        compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:aarch64",
        ],
        os_name = LINUX_NAME,
        # Note: this string differs between OSX and Linux
        # Matches the value returned from:
        # repository_ctx.execute(["uname", "-m"]).stdout.strip()
        arch = "aarch64",
    ),
    "x86_64-apple-darwin": struct(
        compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:x86_64",
        ],
        os_name = MACOS_NAME,
        arch = "x86_64",
    ),
    "x86_64-pc-windows-msvc": struct(
        compatible_with = [
            "@platforms//os:windows",
            "@platforms//cpu:x86_64",
        ],
        os_name = WINDOWS_NAME,
        arch = "x86_64",
    ),
    "x86_64-unknown-linux-gnu": struct(
        compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
        os_name = LINUX_NAME,
        arch = "x86_64",
    ),
}

def get_release_url(platform, python_version, base_url = DEFAULT_RELEASE_BASE_URL, tool_versions = TOOL_VERSIONS):
    """Resolve the release URL for the requested interpreter version

    Args:
        platform: The platform string for the interpreter
        python_version: The version of the intterpreter to get
        base_url: The URL to prepend to the 'url' attr in the tool_versions dict
        tool_versions: A dict listing the interpreter versions, their SHAs and URL

    Returns:
        A tuple of (filename, url, and archive strip prefix)
    """

    url = tool_versions[python_version]["url"]

    if type(url) == type({}):
        url = url[platform]

    strip_prefix = tool_versions[python_version].get("strip_prefix", None)
    if type(strip_prefix) == type({}):
        strip_prefix = strip_prefix[platform]

    release_filename = url.format(
        platform = platform,
        python_version = python_version,
        build = "shared-install_only" if (WINDOWS_NAME in platform) else "install_only",
    )
    url = "/".join([base_url, release_filename])
    return (release_filename, url, strip_prefix)

def print_toolchains_checksums(name):
    native.genrule(
        name = name,
        srcs = [],
        outs = ["print_toolchains_checksums.sh"],
        cmd = """\
cat > "$@" <<'EOF'
#!/bin/bash

set -o errexit -o nounset -o pipefail

echo "Fetching hashes..."

{commands}
EOF
        """.format(
            commands = "\n".join([
                _commands_for_version(python_version)
                for python_version in TOOL_VERSIONS.keys()
            ]),
        ),
        executable = True,
    )

def _commands_for_version(python_version):
    return "\n".join([
        "echo \"{python_version}: {platform}: $$(curl --location --fail {release_url_sha256} 2>/dev/null || curl --location --fail {release_url} 2>/dev/null | shasum -a 256 | awk '{{ print $$1 }}')\"".format(
            python_version = python_version,
            platform = platform,
            release_url = get_release_url(platform, python_version)[1],
            release_url_sha256 = get_release_url(platform, python_version)[1] + ".sha256",
        )
        for platform in TOOL_VERSIONS[python_version]["sha256"].keys()
    ])

def gen_python_config_settings(name = ""):
    for platform in PLATFORMS.keys():
        native.config_setting(
            name = "{name}{platform}".format(name = name, platform = platform),
            constraint_values = PLATFORMS[platform].compatible_with,
        )
