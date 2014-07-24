case node['platform']
when 'ubuntu'
  default['modules']['default']['modules'] = ['lp', 'rtc']
end

default['modules']['packages'] = value_for_platform_family(
  'debian' => value_for_platform(
    'ubuntu' => {
      'default' => ['kmod'],
      ['10.04', '12.04', '12.10', '13.04', '13.10', '14.04', '14.10'] => ['module-init-tools'],
    },
    'default' => ['kmod']
  ),
  'default' => []
)
