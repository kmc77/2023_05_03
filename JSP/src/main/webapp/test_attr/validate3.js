$(document).ready(function() {
	let idcheck_value = '';        // id �ߺ��˻�� ��

	// ���̵� �ߺ� Ȯ�� �κ�
	$("#idcheck").click(function() {
		const id = $("#id");

		// jQuery�� trim()�� ����Ͽ� ���� ����
		// ����) $.trim(str);
		// ���ڿ�(str)�� �յ� ������ �����մϴ�.
		const id_value = $.trim(id.val());
		if (id_value == "") {
			alert("���̵� �Է����ּ���");
			id.focus();
		} else {
			// ù ���ڴ� �빮���̰�, �� ��° ���ں��ʹ� �빮��, �ҹ���, ����, _�� �̷������ ��
			pattern = /^[A-Z][a-zA-Z0-9_]{3,}$/;
			if (pattern.test(id_value)) {
				idcheck_value = id_value;
				const ref = `idcheck.html?id=${id_value}`;
				window.open(ref, "idcheck", "width=350,height=200");
			} else {
				alert("ù ���ڴ� �빮���̰�, �� ��° ���ں��ʹ� �빮��, �ҹ���, ����, _�� �̷������ �մϴ�");
				id.val('').focus();
			}
		}
	}); // $("#idcheck").click() ����

	// �����ȣ �˻� ��ư Ŭ��
	$("#postcode").click(function() {
		//window.open("post.html", "post", "width=400,height=500,scrollbars=yes");
		Postcode();

	}); // $("#postcode").click ����

	// ����ּ� ǥ��� ���� �����͸� �޾ƿͼ� �ùٸ� �ּҸ� �����ϴ� ����� �����ϴ� ����
	function Postcode() {
		new daum.Postcode({
			oncomplete: function(data) {
				console.log(data.zonecode);
				// �˾����� �˻� ��� �������� Ŭ������ �� ������ �ڵ带 �ۼ��ϴ� �κ�

				// ����ּ��� ���� ��Ģ�� ���� �ּҸ� �����մϴ�.
				// ���������� ������ �߰��մϴ�. (��, ���������� �������� ����)
				// ���������� ������ ���� ���, ������ ���ڷ� "��/��/��"�� �����ϴ�.
				var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
				var extraRoadAddr = ''; // ���θ� ������ �ּ� ����

				// ���������� �ְ�, "��/��/��"�� ������ ��� �߰��մϴ�.
				if (data.bname !== '' && /[��|��|��]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// �ǹ����� �ְ�, ����Ʈ�� ��� �߰��մϴ�.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// ���θ� �ּҰ� �ְ�, ���� �ּҰ� ������ �ּ��� ��� ���� ���ڿ��� ��ȣ�� �����ݴϴ�.
				if (extraRoadAddr !== '') {
					extraRoadAddr = '(' + extraRoadAddr + ')';
				}
				// ���θ� �ּҿ� ������ �ּҸ� �߰��մϴ�.
				if (fullRoadAddr !== '') {
					fullRoadAddr += extraRoadAddr;
				}

				// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ֽ��ϴ�.
				$("#post1").val(data.zonecode); // 5�ڸ� �������ȣ ���
				$("#address").val(fullRoadAddr);
			}
		}).open();
	}

	// ������ ���� �κ�
	$("#sel").change(function() {
		const domain = $("#domain");
		if ($(this).val() == "") { // ���� �Է��� ���õ� ���
			domain.val("").focus().prop("readOnly", false);
		} else { // �������� ���õ� ���
			domain.val($(this).val()).prop("readOnly", true);
		}
	}); // $("#sel").change ����

	$("#jumin1").keyup(function() {
		if ($("#jumin1").val().length == 6) {
			pattern = /^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])$/;
			if (pattern.test($("#jumin1").val())) {
				$("#jumin2").focus(); // �ֹε�Ϲ�ȣ ������ �ڸ��� ��Ŀ�� �̵�
			} else {
				alert("���ڸ� �Է��ϰų� ���Ŀ� �°� [yymmdd] �������� �Է��ϼ���");
				$(this).val('').focus();
			}
		}
	}); // $("#jumin1").keyup ����

	$("#jumin2").keyup(function() {
		if ($.trim($(this).val()).length == 7) {
			pattern = /^[1234][0-9]{6}$/;
			if (pattern.test($(this).val())) {
				const c = $(this).val().substring(0, 1);
				const index = (c - 1) % 2; // c�� 1 �Ǵ� 3�̸� index�� 0, c�� 2 �Ǵ� 4�̸� index�� 1
				$("input[type=radio]").eq(index).prop("checked", true);
			} else {
				alert("�ùٸ� �������� �Է����ּ��� [1234][0-9]{6}");
				$(this).val('').focus();
			}
		}
	});

	// ȸ�� ���� ��ư Ŭ�� �� �̺�Ʈ ó�� �κ�
	$("form").submit(function() {
		// jQuery�� trim()�� ����Ͽ� ���� ����
		// ����) $.trim(str); - ���ڿ�(str)�� �յ� ������ �����մϴ�.
		const id = $("#id");
		if ($.trim(id.val()) == "") {
			alert("���̵� �Է����ּ���");
			id.focus();
			return false;
		}

		// ���� ������ ���̵� ���� ���̵� �ߺ� Ȯ�ο� ���� ���̵�� �ٸ� ��� �޽��� ǥ��
		let submit_id_value = $.trim(id.val());
		if (submit_id_value != idcheck_value) {
			alert("���̵� �ߺ� Ȯ���� ���ּ���");
			return false;
		}

		const pass = $("#pass");
		if ($.trim(pass.val()) == "") {
			alert("��й�ȣ�� �Է����ּ���");
			pass.focus();
			return false;
		}

		const jumin1 = $("#jumin1");
		if ($.trim(jumin1.val()) == "") {
			alert("�ֹε�Ϲ�ȣ ù �ڸ��� �Է����ּ���");
			jumin1.focus();
			return false;
		}

		if ($.trim(jumin1.val()).length != 6) {
			alert("�ֹε�Ϲ�ȣ �� 6�ڸ��� �Է����ּ���");
			jumin1.val("").focus();
			return false;
		}



		const jumin2 = $("#jumin2");
		if ($.trim(jumin2.val()) == "") {
			alert("�ֹε�Ϲ�ȣ ���ڸ��� �Է����ּ���");
			jumin2.focus();
			return false;
		}

		if ($.trim(jumin2.val()).length != 7) {
			alert("�ֹε�Ϲ�ȣ ������ 7�ڸ��� �Է����ּ���");
			jumin2.val("").focus();
			return false;
		}

		const email = $("#email");
		if ($.trim(email.val()) == "") {
			alert("�̸��� ID�� �Է����ּ���");
			email.focus();
			return false;
		}

		const domain = $("#domain");
		if ($.trim(domain.val()) == "") {
			alert("�̸��� �������� �Է����ּ���");
			domain.focus();
			return false;
		}

		let cnt = $('input:radio:checked').length;
		if (cnt == 0) {
			alert("������ �������ּ���");
			return false;
		}

		cnt = $('input:checkbox:checked').length;
		if (cnt < 2) {
			alert("��̴� 2���̻� �����ϼ���");
			return false;
		}

		const post1 = $("#post1");
		if ($.trim(post1.val()) == "") {
			alert("�����ȣ�� �Է����ּ���");
			post1.focus();
			return false;
		}

		// $.isNumeric(): �ش� �Ű������� ���� �������� Ȯ���ϴ� �޼ҵ�
		if (!$.isNumeric(post1.val())) {
			alert("�����ȣ���� ���ڸ� �Է��� �� �ֽ��ϴ�.");
			post1.val("").focus();
			return false;
		}

		const address = $("#address");
		if ($.trim(address.val()) == "") {
			alert("�ּҸ� �Է����ּ���");
			address.focus();
			return false;
		}

		const intro = $("#intro");
		if ($.trim(intro.val()) == "") {
			alert("�ڱ� �Ұ��� �Է����ּ���");
			intro.focus();
			return false;
		}


	});
});
