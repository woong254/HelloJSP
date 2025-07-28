-- �Խñ� ��ȣ, ����, ����, �ۼ���, ��ȸ��, ��������, ��������
create table tbl_board (
 board_no number, -- �� ��ȣ
 title    varchar2(100)  not null, -- ����
 content  varchar2(1000) not null, -- ����
 writer   varchar2(30)   not null, -- �ۼ���
 view_cnt number default 0, -- ��ȸ��
 creation_date date default sysdate, -- ������ ���� ����
 last_update_date date default sysdate -- �������� ����

);

alter table tbl_board add constraint pk_board primary key(board_no);
create sequence board_seq;

insert into tbl_board (board_no, title, content, writer)
values(board_seq.nextval, '�Խñ� ���', '�Խñ� ��� �����Դϴ�', 'ȫ�浿');

insert into tbl_board (board_no, title, content, writer)
values(board_seq.nextval, '��� �׽�Ʈ', 'HTML, CSS, Javascript �Դϴ�', '��浿');

insert into tbl_board (board_no, title, content, writer)
values(board_seq.nextval, '��۵�ϵǳ���?', '����� ����̴ϴ�', '�ڱ浿');

insert into tbl_board (board_no, title, content, writer)
values(1, '�Խñ� ���', '�Խñ� ��� �����Դϴ�', 'ȫ�浿');

select * from tbl_board;

drop sequence board_seq;

commit;

drop table tbl_board;