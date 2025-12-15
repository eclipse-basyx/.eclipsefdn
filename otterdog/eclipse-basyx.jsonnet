local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('dt.basyx', 'eclipse-basyx') {
  settings+: {
    description: "",
    name: "Eclipse BaSyx™",
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  webhooks+: [
    orgs.newOrgWebhook('https://ci.eclipse.org/basyx/github-webhook/') {
      content_type: "json",
      events+: [
        "pull_request",
        "push",
        "release"
      ],
    },
  ],
  secrets+: [
    orgs.newOrgSecret('CRATES_IO_TOKEN') {
      value: "********",
    },
    orgs.newOrgSecret('PYPI_ORG_TOKEN') {
      value: "********",
    },
    orgs.newOrgSecret('DOCKER_HUB_TOKEN') {
      value: "pass:bots/dt.basyx/docker.com/api-token",
    },
    orgs.newOrgSecret('DOCKER_HUB_USER') {
      value: "pass:bots/dt.basyx/docker.com/username",
    },
    orgs.newOrgSecret('ORG_GPG_KEY_ID') {
      value: 'pass:bots/dt.basyx/gpg/key_id',
    },
    orgs.newOrgSecret('ORG_GPG_PASSPHRASE') {
      value: 'pass:bots/dt.basyx/gpg/passphrase',
    },
    orgs.newOrgSecret('ORG_GPG_PRIVATE_KEY') {
      value: 'pass:bots/dt.basyx/gpg/secret-subkeys.asc',
    },
    orgs.newOrgSecret('CENTRAL_SONATYPE_TOKEN_PASSWORD') {
      value: 'pass:bots/dt.basyx/central.sonatype.org/token-password',
    },
    orgs.newOrgSecret('CENTRAL_SONATYPE_TOKEN_USERNAME') {
      value: 'pass:bots/dt.basyx/central.sonatype.org/token-username',
    },
  ],
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-applications') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "applications",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-aas-web-ui') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Web-based user interface for managing and interacting with Asset Administration Shells (AAS)",
      topics+: [
        "basyx",
        "aas",
        "assetadministrationshell",
        "web-ui",
        "vue"
      ],
      web_commit_signoff_required: false,
      has_discussions: true,
      workflows+: {
        default_workflow_permissions: "read",
      },
    },
    orgs.newRepo('basyx-typescript-sdk') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "BaSyx TypeScript SDK for developing applications and components for the Asset Administration Shell (AAS)",
      topics+: [
        "basyx",
        "aas",
        "assetadministrationshell",
        "client",
        "utils"
      ],
      web_commit_signoff_required: false,
      has_discussions: true,
      workflows+: {
        default_workflow_permissions: "read",
      },
    },
    orgs.newRepo('basyx-go-components') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "The BaSyx Go Components include all standardized Server Components as per AAS Specification Part 2: Application Programming Interfaces",
      topics+: [
        "basyx",
        "aas",
        "assetadministrationshell",
        "server",
        "go",
        "api"
      ],
      web_commit_signoff_required: false,
      has_discussions: true,
      workflows+: {
        default_workflow_permissions: "read",
      },
    },
    orgs.newRepo('node-red-contrib-aas') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "NodeRED nodes to communicate with the AAS API",
      topics+: [
        "nodered",
        "aas",
        "assetadministrationshell",
        "nodes",
        "flow"
      ],
      web_commit_signoff_required: false,
      has_discussions: true,
      workflows+: {
        default_workflow_permissions: "read",
      },
    },
    orgs.newRepo('aas-benchmarks') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Benchmark scripts for AAS API components",
      topics+: [
        "benchmark",
        "aas",
        "assetadministrationshell",
        "testing",
        "infrastructure"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "read",
      },
    },
    orgs.newRepo('basyx-archive') {
      archived: true,
      description: "Archived single repo",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-cpp-components') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "cpp-components",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-cpp-sdk') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "cpp-sdk",
      homepage: "",
      topics+: [
        "basyx"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-databridge') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-demonstrators') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-dotnet') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-dotnet-applications') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "dotnet-applications",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-dotnet-components') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "dotnet-components",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-dotnet-examples') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "dotnet-examples",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-dotnet-sdk') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "dotnet-sdk",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-java-components') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "java-components",
      homepage: "",
      topics+: [
        "basyx"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-java-examples') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "java-examples",
      homepage: "",
      topics+: [
        "basyx"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-java-sdk') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "java-sdk",
      homepage: "",
      topics+: [
        "basyx"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-java-server-sdk') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      has_discussions: true,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-python-sdk') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/basyx-python-sdk/255100/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
      secrets: [
        orgs.newRepoSecret('READTHEDOCS_ORG_TOKEN') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('basyx-python-framework') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "read",
      },
    },
    orgs.newRepo('basyx-rust-sdk') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-pdf-to-aas') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      description: "Python library to extract technical data via LLMs from PDF and export them in AAS format.",
      topics+: [
        "basyx",
        "aas",
        "asset-administration-shell",
        "large-language-model",
        "technical-data-extraction"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('basyx-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('API_TOKEN_GITHUB') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('basyx-website-publish') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
    orgs.newRepo('basyx-wiki') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/basyx-wiki/253837/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "pass:bots/dt.basyx/readthedocs.org/wiki-webhook-secret",
        },
      ],
    },
    orgs.newRepo('charts') {
      allow_merge_commit: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "This repository contains Helm charts for Eclipse BaSyx",
      topics+: [
        "helm-charts",
        "basyx",
        "cloud",
        "aas",
        "assetadministrationshell"
      ],
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      private_vulnerability_reporting_enabled: true,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main",
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
  ],
}
