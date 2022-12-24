part of 'pages.dart';

class WellcomePage extends StatefulWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  _WellcomePageState createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
  bool _isHidden = true;
  bool _isHiddenCourse = true;
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmPassword = true;

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/images/ulang-image.png',
                height: 333, fit: BoxFit.fill),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Selamat Datang",
              style: dangerTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              "Di Mobile Apps Malik Mustafa,\nIni Project Pertama Saya",
              style: whiteTextStyle.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 51,
            ),

            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              child: ElevatedButton(
                onPressed: () {
                  //NOTE: TAMPILKAN MODAL REGISTER
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Wrap(
                            children: [
                              //BAGIAN MODAL
                              Container(
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40),
                                    ),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: defaultMargin),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // JARAK
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Hello...",
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                          fontSize: 20,
                                                          color: blackColor),
                                                ),
                                                Text(
                                                  "Register",
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                          color: blackColor),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Center(
                                              child: InkWell(
                                                  onTap: () {
                                                    //KETIKA ICON DI TEKAN
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Icon(Icons.close,
                                                      size: 30,
                                                      color: Colors.red)),
                                            ),
                                          ],
                                        ),

                                        const SizedBox(
                                          height: 25,
                                        ),

                                        TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            hintText: "info@example.com",
                                            labelText: "username/email",
                                            suffixIcon: InkWell(
                                              onTap: _toogleUsernameView,
                                              child: Icon(_isHidden
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        //NOTE : COURSE
                                        TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "course",
                                                labelText: "course",
                                                suffixIcon: InkWell(
                                                    onTap: _toogleCourseView,
                                                    child: Icon(_isHiddenCourse
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined)))),
                                        const SizedBox(
                                          height: 20,
                                        ),

                                        // NOTE : PASSWORD
                                        TextField(
                                          obscureText: _isHiddenPassword,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            hintText: "password",
                                            labelText: "password",
                                            suffixIcon: InkWell(
                                              onTap: _tooglePasswordView,
                                              child: Icon(
                                                _isHiddenPassword
                                                    ? Icons.lock_outline
                                                    : Icons.lock_open_outlined,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),

                                        const SizedBox(
                                          height: 20,
                                        ),
                                        // NOTE : CONFIRM PASSWORD
                                        TextField(
                                          obscureText: _isHiddenConfirmPassword,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            hintText: "confirm password",
                                            labelText: "confirm password",
                                            suffixIcon: InkWell(
                                              onTap: _toogleConfirmPasswordView,
                                              child: Icon(
                                                _isHiddenConfirmPassword
                                                    ? Icons.lock_outline
                                                    : Icons.lock_open_outlined,
                                              ),
                                            ),
                                          ),
                                        ),

                                        const SizedBox(
                                          height: 25,
                                        ),

                                        SizedBox(
                                          height: 60,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              2 * defaultMargin,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              log("Register123");
                                            },
                                            child: Text(
                                              'Register',
                                              style: whiteTextStyle.copyWith(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: secondaryColor,
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: primaryColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),

                                        const SizedBox(
                                          height: 10,
                                        ),

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Already have account?",
                                              style: whiteTextStyle.copyWith(
                                                color: primaryColor,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              "Login",
                                              style: whiteTextStyle.copyWith(
                                                color: dangerColor,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(
                                          height: defaultMargin,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                  );
                },
                child: Text(
                  'Create Account',
                  style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: primaryColor),
                ),
                style: ElevatedButton.styleFrom(
                  primary: secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            // ignore: sized_box_for_whitespace
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              child: ElevatedButton(
                onPressed: () {
                  //NOTE: TAMPILKAN MODAL REGISTER
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Wrap(
                            children: [
                              //BAGIAN MODAL
                              Container(
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40),
                                    ),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: defaultMargin),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // JARAK
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Hello...",
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                          fontSize: 20,
                                                          color: blackColor),
                                                ),
                                                Text(
                                                  "Register",
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                          color: blackColor),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Center(
                                              child: InkWell(
                                                  onTap: () {
                                                    //KETIKA ICON DI TEKAN
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Icon(Icons.close,
                                                      size: 30,
                                                      color: Colors.red)),
                                            ),
                                          ],
                                        ),

                                        const SizedBox(
                                          height: 25,
                                        ),

                                        TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "info@example.com",
                                                labelText: "username/email",
                                                suffixIcon: InkWell(
                                                    onTap: _toogleUsernameView,
                                                    child: Icon(_isHidden
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined)))),

                                        const SizedBox(
                                          height: 20,
                                        ),

                                        // NOTE : PASSWORD
                                        TextField(
                                            obscureText: _isHiddenPassword,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: "password",
                                                labelText: "password",
                                                suffixIcon: InkWell(
                                                    onTap: _tooglePasswordView,
                                                    child: Icon(_isHiddenPassword
                                                        ? Icons.lock_outline
                                                        : Icons
                                                            .lock_open_outlined)))),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFD7D7D7),
                                                border: Border.all(
                                                    color: primaryColor,
                                                    width: 3),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Checkbox(
                                              value: _isChecked,
                                              checkColor:
                                                  const Color(0xFFD7D7D7),
                                              onChanged: (value) {
                                                setState(() {
                                                  _isChecked = value!;
                                                });
                                              },
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text("Remember me",
                                              style: whiteTextStyle.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 12)),
                                          const Spacer(),
                                          Text("Forgot Password?",
                                              style: whiteTextStyle.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 12))
                                        ]),

                                        const SizedBox(
                                          height: 20,
                                        ),

                                        const SizedBox(
                                          height: 25,
                                        ),

                                        SizedBox(
                                          height: 60,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              2 * defaultMargin,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Login',
                                              style: whiteTextStyle.copyWith(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: secondaryColor),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: primaryColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),

                                        const SizedBox(
                                          height: 10,
                                        ),

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Don’t have an account? ?",
                                              style: whiteTextStyle.copyWith(
                                                color: primaryColor,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              "Register",
                                              style: whiteTextStyle.copyWith(
                                                color: dangerColor,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(
                                          height: defaultMargin,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                  );
                },
                child: Text(
                  'Login',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: secondaryColor,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: secondaryColor, width: 3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'All Right Reserved @2022',
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(color: whiteColor, fontSize: 11),
            ),
            SizedBox(
              height: defaultMargin,
            ),
          ],
        ),
      ),
    );
  }

  void _toogleUsernameView() {
    setState(
      () {
        _isHidden = !_isHidden;
      },
    );
  }

  void _toogleCourseView() {
    setState(
      () {
        _isHiddenCourse = !_isHiddenCourse;
      },
    );
  }

  void _tooglePasswordView() {
    setState(
      () {
        _isHiddenPassword = !_isHiddenPassword;
      },
    );
  }

  void _toogleConfirmPasswordView() {
    setState(
      () {
        _isHiddenConfirmPassword = !_isHiddenConfirmPassword;
      },
    );
  }
}
