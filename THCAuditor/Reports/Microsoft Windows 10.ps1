﻿[Report] @{
	Title = "Windows 10 Report"
	ModuleName = "THCAuditor"
	BasedOn = @(
		"CIS Microsoft Windows 10 Enterprise Release 2004 Benchmark, Version: 1.9.0, Date: 2020-08-14"
		"Microsoft Security baseline (FINAL) for Windows 10, Version: 20H2, Date: 2020-12-17"
		"SiSyPHuS Windows - Telemetry components - Bundesamt für Sicherheit in der Informationstechnik (BSI), Version: V1.1, Date: 2019-07-31"
	)
	Sections = @(
		[ReportSection] @{
			Title = 'CIS Benchmarks'
			Description = 'This section contains the CIS Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Windows 10'
					Description = 'This section contains the CIS Benchmark results.'
					SubSections = @(
						[ReportSection] @{
							Title = 'Registry Settings/Group Policies'
							AuditInfos = Test-AuditGroup "Microsoft Windows 10-CIS-1.9.0#RegistrySettings"
						}
						[ReportSection] @{
							Title = 'User Rights Assignment'
							AuditInfos = Test-AuditGroup "Microsoft Windows 10-CIS-1.9.0#UserRights"
						}
						[ReportSection] @{
							Title = 'Account Policies'
							AuditInfos = Test-AuditGroup "Microsoft Windows 10-CIS-1.9.0#AccountPolicies"
						}
						[ReportSection] @{
							Title = 'Advanced Audit Policy Configuration'
							AuditInfos = Test-AuditGroup "Microsoft Windows 10-CIS-1.9.0#AuditPolicies"
						}
					)
				}
				[ReportSection] @{
					Title = 'Office 2016'
					Description = 'This section contains the CIS Benchmark results.'
					SubSections = @(
						[ReportSection] @{
							Title = 'Microsoft Office 2016'
							AuditInfos = Test-AuditGroup "Microsoft Office 2016-CIS-1.1.0#RegistrySettings"
						}
					)
				}
			)
		}
		[ReportSection] @{
			Title = 'Microsoft Benchmarks'
			Description = 'This section contains the Microsoft Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-Microsoft-20H2#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'User Rights Assignment'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-Microsoft-20H2#UserRights"
				}
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-Microsoft-20H2#AccountPolicies"
				}
				[ReportSection] @{
					Title = 'Advanced Audit Policy Configuration'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-Microsoft-20H2#AuditPolicies"
				}
			)
		}
		[ReportSection] @{
			Title = "BSI Recommendations"
			Description = "This section contains the Telemetry-Recommendations of the Federal Office for Information Security (BSI)"
			SubSections = @(
				[ReportSection] @{
					Title = "Telemetry"
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 GDPR-BSI-V1.1#RegistrySettings"
				}
			)
		}
	)
}