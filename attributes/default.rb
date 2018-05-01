default['modules']['packages'] = value_for_platform_family(
  'debian' => value_for_platform(
    'ubuntu' => {
      'default' => ['kmod'],
      ['10.04', '12.04'] => ['module-init-tools'],
    },
    'default' => ['kmod']
  ),
  'default' => []
)
