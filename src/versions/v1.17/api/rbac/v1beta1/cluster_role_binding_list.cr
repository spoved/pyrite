# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ClusterRoleBindingList is a collection of ClusterRoleBindings. Deprecated in v1.17 in favor of [rbac.authorization.k8s.io/v1 ClusterRoleBindingList, and will no longer be served in v1.20.](rbac.authorization.k8s.io/v1 ClusterRoleBindingList, and will no longer be served in v1.20.)
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "ClusterRoleBindingList", version: "v1beta1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings", toplevel: false,
    args: [{name: "role_ref", type: Api::Rbac::V1beta1::RoleRef},
           {name: "metadata", type: Apimachinery::Apis::Meta::V1::ObjectMeta | Nil, default: nil},
           {name: "subjects", type: Array | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  class Api::Rbac::V1beta1::ClusterRoleBindingList
    getter api_version : String = "v1"
    getter kind : String = "List"
    # Items is a list of ClusterRoleBindings
    property items : Array(Api::Rbac::V1beta1::ClusterRoleBinding)

    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Rbac::V1beta1::ClusterRoleBinding), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "List", key: "kind", setter: false},
      items:       {type: Array(Api::Rbac::V1beta1::ClusterRoleBinding), nilable: false, key: "items", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
