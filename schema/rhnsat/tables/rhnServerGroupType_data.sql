--
-- $Id$
--
-- data for rhnServerGroupType

-- sw_mgr_entitled type ------------------------------------------------------

insert into rhnServerGroupType (id, label, name, permanent, is_base)
        values (rhn_servergroup_type_seq.nextval,
                'sw_mgr_entitled', 'RHN Update Entitled Servers', 
                'N', 'Y'
        );

-- enterprise_entitled type --------------------------------------------------

insert into rhnServerGroupType (id, label, name, permanent, is_base)
        values (rhn_servergroup_type_seq.nextval,
                'enterprise_entitled', 'RHN Management Entitled Servers', 
                'N', 'Y'
        );

-- monitoring_entitled type --------------------------------------------------

insert into rhnServerGroupType (id, label, name, permanent, is_base)
	values (rhn_servergroup_type_seq.nextval,
		'monitoring_entitled', 'RHN Monitoring Entitled Servers', 
        'N', 'N'
	);

-- provisioning_entitled type ------------------------------------------------

insert into rhnServerGroupType (id, label, name, permanent, is_base)
        values (rhn_servergroup_type_seq.nextval,
                'provisioning_entitled', 'RHN Provisioning Entitled Servers',
                'N', 'N'
        );

-- virtualization_* types ----------------------------------------------------

insert into rhnServerGroupType ( id, label, name, permanent, is_base)
   values ( rhn_servergroup_type_seq.nextval,
      'virtualization_host', 'Virtualization Host Entitled Servers',
      'N', 'N'
   );      

insert into rhnServerGroupType ( id, label, name, permanent, is_base)
   values ( rhn_servergroup_type_seq.nextval,
      'virtualization_host_platform', 
      'Virtualization Host Platform Entitled Servers',
      'N', 'N'
   );      

-- nonlinux_entitled type ----------------------------------------------------

insert into rhnServerGroupType ( id, label, name, permanent, is_base)
   values ( rhn_servergroup_type_seq.nextval,
      'nonlinux_entitled', 'Non-Linux Entitled Servers',
      'N', 'Y'
   );

commit;

-- $Log$
-- Revision 1.7  2004/05/25 21:41:48  pjones
-- bugzilla: 123639 -- monitoring SG type.
--
-- Revision 1.6  2004/02/19 20:17:50  pjones
-- bugzilla: 115896 -- add sgt and oet data for nonlinux, add
-- [un]set_customer_nonlinux
--
-- Revision 1.5  2003/09/24 15:40:37  pjones
-- bugzilla: 103233
--
-- changes for new names
--
-- Revision 1.4  2003/09/19 22:35:07  pjones
-- bugzilla: none
--
-- provisioning and config management entitlement support
--
-- Revision 1.3  2002/05/31 15:44:08  cturner
-- fix from last night
--
-- Revision 1.2  2002/05/23 20:20:51  cturner
-- remove old vestigal silly server group type
--
-- Revision 1.1  2002/03/08 23:01:05  pjones
-- split imports out into seperate files
--
