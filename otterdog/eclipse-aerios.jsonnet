local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('iot.aerios', 'eclipse-aerios') {
  settings+: {
    blog: "https://projects.eclipse.org/projects/iot.aerios",
    description: "A Meta-OS to govern the Cloud-Edge-IoT continuum",
    location: "European Union",
    members_can_change_project_visibility: false,
    name: "Eclipse aeriOS project",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  secrets+: [
    orgs.newOrgSecret('DOCKER_HUB_USER') {
      value: "pass:bots/iot.aerios/docker.com/username",
    },
    orgs.newOrgSecret('DOCKER_HUB_TOKEN') {
      value: "pass:bots/iot.aerios/docker.com/api-token",
    },
  ],
  _repositories+:: [
    orgs.newRepo('aerios-k8s-shim') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Middleware component for K8s integration",
      has_discussions: true,
      has_wiki: false,
      topics+: [
        "aerios",
        "k8s",
        "token"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('aerios-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "aeriOS project website",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      topics+: [
        "aerios",
        "hugo",
        "hugo-solstice-theme",
        "website"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('api-gateway') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "aeriOS Domain API Gateway configuration",
      has_discussions: true,
      homepage: "",
      topics+: [
        "aerios",
        "api-gateway",
        "krakend",
        "rbac",
        "security"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('benchmarking-tool') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "The aeriOS Benchmarking tool provides the measurement of IEs performance (CPU/RAM processing and bandwidth of network interfaces); and the calculation of some technical KPIs",
      has_discussions: true,
      topics+: [
        "aerios",
        "aerios-management-framework",
        "benchmarking",
        "geekbench",
        "iperf",
        "kpi-measurement"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('federator') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "The aeriOS Federator serves as a management service responsible for controlling the establishment and maintenance of federation mechanisms among the multiple aeriOS domains that form the Cloud-Edge-IoT continuum",
      has_discussions: true,
      homepage: "",
      topics+: [
        "aerios",
        "aerios-management-framework",
        "cloud-edge-continuum",
        "domain",
        "edge-computing",
        "federator",
        "management",
        "ngsi-ld"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('embedded-analytics-tool') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "The aeriOS Federator serves as a management service responsible for controlling the establishment and maintenance of federation mechanisms among the multiple aeriOS domains that form the Cloud-Edge-IoT continuum",
      has_discussions: true,
      homepage: "",
      topics+: [
        "aerios",
        "aerios-faas-template",
        "faas",
        "openfaas",
        "serverless"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('entrypoint-balancer') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "The aeriOS Entrypoint Balancer distributes the orchestration requests received from the Management Portal among the different High-Level Orchestrator (HLO) instances deployed in the aeriOS domains",
      has_discussions: true,
      topics+: [
        "aerios",
        "aerios-management-framework",
        "entrypoint-balancer",
        "improved-weighted-least-connections",
        "load-balancer"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('hlo-allocator') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "(Re)Allocator component of the aeriOS High-Level Orchestrator (HLO)",
      has_discussions: true,
      has_wiki: false,
      topics+: [
        "aerios",
        "ai",
        "aerios-service-orchestration",
        "federation",
        "hlo",
        "orchestration"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('hlo-data-aggregator') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Data aggregator component of the aeriOS High-Level Orchestrator (HLO)",
      has_discussions: true,
      has_wiki: false,
      topics+: [
        "aerios",
        "aerios-service-orchestration",
        "federation",
        "hlo",
        "orchestration"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('hlo-deployment-engine') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Deployment Engine component of the aeriOS High-Level Orchestrator (HLO)",
      has_discussions: true,
      has_wiki: false,
      topics+: [
        "aerios",
        "aerios-service-orchestration",
        "federation",
        "hlo",
        "orchestration"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('hlo-explainability-service') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "AI Explainability Service for Task Allocation Models, specially focused on the aeriOS High-Level Orchestrator (HLO) models",
      has_discussions: true,
      has_wiki: false,
      topics+: [
        "aerios",
        "aerios-service-orchestration",
        "explainability",
        "hlo",
        "orchestration",
        "task-allocation",
        "xai"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('hlo-fe') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Frontend component of the aeriOS High-Level Orchestrator (HLO)",
      has_discussions: true,
      has_wiki: false,
      topics+: [
        "aerios",
        "aerios-service-orchestration",
        "federation",
        "hlo",
        "ngsi-ld",
        "orchestration",
        "tosca"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('idm') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "aeriOS Identity Manager (IdM) based on Keycloak and LDAP",
      has_discussions: true,
      homepage: "",
      topics+: [
        "aerios",
        "idm",
        "keycloak",
        "ldap",
        "rbac",
        "security"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('iota-tangle') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Required files and configurations to bootstrap and operate an IOTA Tangle for trustworthiness management in aeriOS",
      has_discussions: true,
      topics+: [
        "aerios",
        "iota-tangle",
        "trustworthiness"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('iota-messages-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "REST API to insert messages into an IOTA Tangle",
      has_discussions: true,
      topics+: [
        "aerios",
        "iota-messages-api",
        "iota-tangle",
        "rest-api",
        "trustworthiness"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('iota-tangle-peerer') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Initializes IOTA tangle peering between the K8s nodes of an aeriOS K8s domain",
      has_discussions: true,
      topics+: [
        "aerios",
        "iota-node-peering",
        "iota-tangle",
        "k8s-node",
        "trustworthiness"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('llo-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "API to manage the Low-Level Orchestrators (LLOs) custom resources (CRs) in Kubernetes clusters",
      has_discussions: true,
      homepage: "",
      topics+: [
        "aerios",
        "aerios-service-orchestration",
        "k8s-api",
        "k8s-custom-resources",
        "low-level-orchestrator"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('llo-k8s') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "K8s Operator developed using Operator-SDK to deploy service components in Infrastructure Elements of Kubernetes type",
      has_discussions: true,
      homepage: "",
      topics+: [
        "aerios",
        "aerios-service-orchestration",
        "k8s-operator",
        "low-level-orchestrator",
        "service-deployment",
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('llo-docker-operator') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "K8s Operator developed using Operator-SDK to deploy service components in Infrastructure Elements of Docker type",
      has_discussions: true,
      homepage: "",
      topics+: [
        "aerios",
        "aerios-service-orchestration",
        "k8s-operator",
        "low-level-orchestrator",
        "service-deployment",
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('llo-docker-controller') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "A local controller that must be deployed in each IE that uses Docker as its container management framework to handle and execute the actions requested by the LLO Docker Operator, which is deployed in a K8s cluster",
      has_discussions: true,
      homepage: "",
      topics+: [
        "aerios",
        "aerios-service-orchestration",
        "docker-controller",
        "low-level-orchestrator",
        "service-deployment",
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('management-portal-backend') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "aeriOS Management Portal backend",
      has_discussions: true,
      has_wiki: false,
      topics+: [
        "aerios",
        "aerios-management-framework",
        "backend",
        "management",
        "management-portal",
        "webapp"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('management-portal-frontend') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "aeriOS Management Portal frontend",
      has_discussions: true,
      topics+: [
        "aerios",
        "aerios-management-framework",
        "frontend",
        "management",
        "management-portal",
        "webapp"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('self-api') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "API Gateway for the aeriOS Self-* toolsuite",
      has_discussions: true,
      topics+: [
        "aerios",
        "api-gateway",
        "computing-node",
        "infrastructure-element",
        "self",
        "self-api",
        "self-capabilities"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('self-awareness') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "This component from the aeriOS Self-* toolsuite analyses and obtains information from a computing node, continuously monitoring its health status and workload",
      has_discussions: true,
      topics+: [
        "aerios",
        "computing-node",
        "infrastructure-element",
        "ngsi-ld",
        "self",
        "self-capabilities",
        "self-awareness"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('self-orchestrator') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "This component from the aeriOS Self-* toolsuite is capable of managing facts, rules and alerts to send warnings about problems in an IE to the aeriOS EAT",
      has_discussions: true,
      has_wiki: false,
      topics+: [
        "aerios",
        "alerts",
        "computing-node",
        "infrastructure-element",
        "orchestration",
        "rules",
        "self",
        "self-capabilities",
        "self-orchestrator"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('self-healing') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "This component from the aeriOS Self-* toolsuite crystallizes the capability of autonomously recovering affected parts of the system at both hardware and software levels caused by failures or abnormal states",
      has_discussions: true,
      topics+: [
        "aerios",
        "computing-node",
        "infrastructure-element",
        "self",
        "self-capabilities",
        "self-healing"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('self-optimization') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "This component from the aeriOS Self-* toolsuite is responsible for analysing the IEs states in order to propose possible optimizations within the system",
      has_discussions: true,
      topics+: [
        "aerios",
        "computing-node",
        "infrastructure-element",
        "self",
        "self-adaptation",
        "self-capabilities",
        "self-optimization"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('self-scaling') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "This component from the aeriOS Self-* is able to horizontally scale (up or down) the resources devoted to a specific service (inside a node) in a dynamic fashion, based on time series inference and custom logic",
      has_discussions: true,
      topics+: [
        "aerios",
        "horizontal-pod-autoscaler",
        "infrastructure-element",
        "k8s-node",
        "self",
        "self-capabilities",
        "self-scaling"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('self-security') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "This component from the aeriOS Self-* toolsuite checks network interfaces and analyses traffic to detect possible security threats",
      has_discussions: true,
      topics+: [
        "aerios",
        "computing-node",
        "infrastructure-element",
        "network-security",
        "self",
        "self-capabilities",
        "self-security"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('service-overlay-network') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Overlay network to interconnect deployed aeriOS service components across multiple Infrastructure Elements",
      has_discussions: true,
      topics+: [
        "aerios",
        "aerios-service-orchestration",
        "distributed-networking",
        "overlay-network",
        "service-mesh",
        "wireguard"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('trust-manager') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "A module for monitoring and evaluating the trustworthiness of an Infrastructure Element of the Cloud-Edge-IoT continuum",
      has_discussions: true,
      topics+: [
        "aerios",
        "computing-node",
        "infrastructure-element",
        "trustworthiness",
        "trust-algorithm",
        "trust-score"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('resources') {
      allow_merge_commit: true,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      description: "Repository to host various resources related to the aeriOS project, including Docker Compose files, Helm charts and more installation resources",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "main",
      gh_pages_source_path: "/",
      has_discussions: false,
      has_wiki: false,
      topics+: [
        "aerios",
        "docker-compose",
        "documents",
        "files",
        "helm-charts",
        "installation-resources",
        "resources",
        "resources-repository",
        "static-files"
      ],
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
  ],
}
