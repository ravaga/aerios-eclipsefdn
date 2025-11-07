local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('iot.aerios', 'eclipse-aerios') {
  settings+: {
    description: "A Meta-OS to govern the Cloud-Edge-IoT continuum",
    members_can_change_project_visibility: false,
    name: "Eclipse aeriOS project",
    location: "European Union",
    members_can_create_public_pages: true,
    members_can_create_public_repositories: false,
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('federator') {
      description: "The aeriOS Federator serves as a management service responsible for controlling the establishment and maintenance of federation mechanisms among the multiple aeriOS domains that form the Cloud-Edge-IoT continuum",
      allow_auto_merge: true,
      allow_forking: true,
      allow_merge_commit: false,
      allow_update_branch: false,
      dependabot_alerts_enabled: false,
      has_issues: true,
      has_discussions: true,
      secret_scanning: "enabled",
      topics: [
        "aerios",
        "federator",
        "management",
        "ngsi-ld",
        "domain"
      ],
      workflows+: {
        enabled: true
      }
    }
  ],
}
