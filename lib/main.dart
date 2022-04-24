import 'package:flutter/material.dart';

void main() {
  runApp(Practice8());
}

class Practice8 extends StatelessWidget {
  Practice8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff0B1E2D),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff0B1E2D),
          leading: Icon(
            Icons.arrow_back,
            color: Color(0xffFFFFFF),
          ),
          title: Text(
            'Изменить ФИО',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 61),
          child: Column(
            children: [
              CustomText(hint: 'Имя', label: 'Имя', isColor: true),
              CustomText(hint: 'Фамилия', label: 'Фамилия', isColor: true),
              CustomText(hint: 'Отчество', label: 'Отчество', isColor: false),
              SizedBox(height: 323),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: 319,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff22A2BD),
                    ),
                    child: Text(
                      'Сохранить',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  String label;
  String hint;
  bool isColor;
  CustomText({
    required this.label,
    required this.hint,
    required this.isColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Color(0xffFFFFFF),
            ),
          ),
          SizedBox(height: 8),
          TextField(
            style: TextStyle(
              color: Color(0xffFFFFFF),
            ),
            decoration: InputDecoration(
              constraints: BoxConstraints(minWidth: 319, maxHeight: 48),
              fillColor: Color(0xff152A3A),
              filled: true,
              hintText: hint,
              hintStyle: isColor
                  ? TextStyle(color: Color(0xffFFFFFF), fontSize: 16)
                  : TextStyle(color: Color(0xff5B6975), fontSize: 16),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }
}

class Practice9 extends StatelessWidget {
  Practice9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffFFFFFF),
          leading: Icon(
            Icons.arrow_back,
            color: Color(0xff0A1B28),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 46, 75, 40),
              child: Text(
                'Создать аккаунт',
                style: TextStyle(
                    color: Color(0xff0A1B28),
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
            ),
            CustomText2(label: 'Имя', hint: 'Имя'),
            CustomText2(label: 'Фамилия', hint: 'Фамилия'),
            CustomText2(label: 'Отчество', hint: 'Отчество'),
            SizedBox(
              height: 36,
            ),
            Divider(
              color: Color(0xffF2F2F2),
            ),
            SizedBox(
              height: 36,
            ),
            CustomText2(label: 'Логин', hint: 'Логин'),
            CustomText2(label: 'Пароль', hint: 'Пароль'),
            SizedBox(
              height: 63,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 319,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff22A2BD),
                ),
                child: Text(
                  'Создать',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomText2 extends StatelessWidget {
  String label;
  String hint;
  CustomText2({
    required this.label,
    required this.hint,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Color(0xff0A1B28),
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: 319,
            height: 48,
            child: TextField(
              decoration: InputDecoration(
                constraints: BoxConstraints(minWidth: 319, maxHeight: 48),
                hintText: hint,
                hintStyle: TextStyle(
                  color: Color(0xff5B6975),
                ),
                fillColor: Color(0xffF2F2F2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
