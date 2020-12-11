create database sybredb;

select * from sybredb.login;

select * from sybredb.job;
select * from sybredb.location;
select * from sybredb.office;
select * from sybredb.role;
select * from sybredb.employee;
select * from sybredb.login;
select * from sybredb.login_role;

/* Insert office locations */
insert into sybredb.location (`province`, `city`, `street`) values (null, 'Edinburgh', null);
insert into sybredb.location (`province`, `city`, `street`) values (null, 'Tokyo', null);
insert into sybredb.location (`province`, `city`, `street`) values (null, 'San Francisco', null);
insert into sybredb.location (`province`, `city`, `street`) values (null, 'New York', null);
insert into sybredb.location (`province`, `city`, `street`) values (null, 'London', null);
insert into sybredb.location (`province`, `city`, `street`) values (null, 'Singapore', null);

/* Insert offices */
insert into sybredb.office (`location_id`, `manager_id`) values (1, null);
insert into sybredb.office (`location_id`, `manager_id`) values (2, null);
insert into sybredb.office (`location_id`, `manager_id`) values (3, null);
insert into sybredb.office (`location_id`, `manager_id`) values (4, null);
insert into sybredb.office (`location_id`, `manager_id`) values (5, null);
insert into sybredb.office (`location_id`, `manager_id`) values (6, null);

/* Insert roles */
insert into sybredb.role (`name`) values ('ROLE_EMPLOYEE');
insert into sybredb.role (`name`) values ('ROLE_ADMIN');
insert into sybredb.role (`name`) values ('ROLE_DEVELOPER');

/* Insert jobs */
insert into sybredb.job (`job_title`, `salary`) values ('System Architect', 320800);
insert into sybredb.job (`job_title`, `salary`) values ('Accountant', 170750);
insert into sybredb.job (`job_title`, `salary`) values ('Junior Technical Author', 86000);
insert into sybredb.job (`job_title`, `salary`) values ('Senior Javascript Developer', 433060);
insert into sybredb.job (`job_title`, `salary`) values ('Integration Specialist', 372000);
insert into sybredb.job (`job_title`, `salary`) values ('Sales Assistant', 137500);
insert into sybredb.job (`job_title`, `salary`) values ('Javascript Developer', 205500);
insert into sybredb.job (`job_title`, `salary`) values ('Software Engineer', 103600);
insert into sybredb.job (`job_title`, `salary`) values ('Office Manager', 90560);
insert into sybredb.job (`job_title`, `salary`) values ('Support Lead', 342000);
insert into sybredb.job (`job_title`, `salary`) values ('Regional Director', 470600);
insert into sybredb.job (`job_title`, `salary`) values ('Senior Marketing Designer', 313500);
insert into sybredb.job (`job_title`, `salary`) values ('Marketing Designer', 198500);
insert into sybredb.job (`job_title`, `salary`) values ('Chief Financial Officer (CFO)', 725000);
insert into sybredb.job (`job_title`, `salary`) values ('Systems Administrator', 320800);
insert into sybredb.job (`job_title`, `salary`) values ('Personnel Lead', 217500);
insert into sybredb.job (`job_title`, `salary`) values ('Development Lead', 345000);
insert into sybredb.job (`job_title`, `salary`) values ('Chief Marketing Officer (CMO)', 675000);
insert into sybredb.job (`job_title`, `salary`) values ('Pre-Sales Support', 106450);
insert into sybredb.job (`job_title`, `salary`) values ('Chief Executive Officer (CEO)', 92575);
insert into sybredb.job (`job_title`, `salary`) values ('Chief Operating Officer (COO)', 850000);
insert into sybredb.job (`job_title`, `salary`) values ('Regional Marketing', 163000);
insert into sybredb.job (`job_title`, `salary`) values ('Technical Author', 145000);
insert into sybredb.job (`job_title`, `salary`) values ('Team Leader', 235500);
insert into sybredb.job (`job_title`, `salary`) values ('Secretary', 109850);
insert into sybredb.job (`job_title`, `salary`) values ('Financial Controller', 452500);
insert into sybredb.job (`job_title`, `salary`) values ('Director', 645750);
insert into sybredb.job (`job_title`, `salary`) values ('Support Engineer', 234500);
insert into sybredb.job (`job_title`, `salary`) values ('Data Coordinator', 138575);
insert into sybredb.job (`job_title`, `salary`) values ('Junior Javascript Developer', 75650);
insert into sybredb.job (`job_title`, `salary`) values ('Customer Support', 112000);





