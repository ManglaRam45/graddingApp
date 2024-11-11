import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:validator_forge/validator_builder.dart';
import 'package:validator_forge/validators.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPage();
}

class _FormPage extends State<FormPage> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool? isChecked = true;
  final _titleController = TextEditingController();
  final _nameController = TextEditingController();
  final _genderController = TextEditingController();
  final _dobController = TextEditingController();
  final _codeController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _alterEmailController = TextEditingController();
  final _nationalController = TextEditingController();
  final addressA = TextEditingController();
  final _addressController = TextEditingController();
  final _countryController = TextEditingController();
  final _stateController = TextEditingController();
  final _cityController = TextEditingController();
  final _pinCodeController = TextEditingController();
  final _gstController = TextEditingController();
  final _comNameController = TextEditingController();
  final _comAddressController = TextEditingController();

  InputDecoration getInputDecoration({required String hintText}) {
    return InputDecoration(
      // isDense: true,
      // contentPadding: const EdgeInsets.all(11),
      //
      //
      fillColor: Colors.grey,

      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),

      // focusedBorder:
      //     const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFCED4DA), )),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFCED4DA), width: 1.5),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFCED4DA), width: 1.5),
        borderRadius: BorderRadius.circular(4),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFCED4DA), width: 1.5),
        borderRadius: BorderRadius.circular(4),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget getTitleForTextFiled(String title) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(width: 4),
        const Text(
          "*",
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }

  _dateValidator() async {
    FocusScope.of(context).requestFocus(FocusNode());

    // final currentDate = DateTime.now();
    // DateTime minAdultDate = DateTime(currentDate.year - 18, currentDate.month, currentDate.day);

    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 365 * 18)),
      firstDate: DateTime(1950),
      lastDate: DateTime.now().subtract(const Duration(days: 365 * 18)),
    );
    // if (!mounted) return;

    if (selectedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);

      // if (selectedDate.isAfter(minAdultDate)) {
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('You must be at least 18 years old')),
      // );
      //   return;
      // }

      _dobController.text = formattedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FE),
      // appBar:AppBar(
      //   title: Text("Form Page"),
      // )
      appBar: AppBar(
        title: Image.asset('assets/images/app_logo.png'),
        centerTitle: true,
        // leading: Image.asset(
        //   'assets/images/leading.png',
        // ),

        leading: SvgPicture.asset(
          'assets/vectors/back.svg',
        ),
        actions: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
          Image.asset('assets/images/notification_icon.png')
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/hotel.png',
                        fit: BoxFit.fill,
                        height: 110,
                        width: 130,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Aster Will Hotel",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF101010)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Alice Springs NT 0870,London",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF939393)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "\$200",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF066AC9)),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "View Details",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF066AC9)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Booking Form",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF111928)),
            ),
            Form(
              key: _globalKey,
              child: Container(
                padding: const EdgeInsets.all(13),
                margin: const EdgeInsets.all(13),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Personal Details",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF066AC9)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        // Divider(),
                        Flexible(
                          child: Divider(
                            height: 2,
                            color: Colors.black38,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            getTitleForTextFiled("Title"),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: DropdownButtonFormField<String>(
                                padding: const EdgeInsets.symmetric(horizontal: 0),
                                isExpanded: false,
                                items: ['Mr', 'Mrs'].map((String title) {
                                  return DropdownMenuItem<String>(
                                    value: title,
                                    child: Text(title),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    _titleController.text = newValue;
                                  }
                                },
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF111928),
                                ),
                                decoration: getInputDecoration(hintText: "Title"),
                                validator: (value) => Validators.required(value),
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Required";
                                //   }
                                //   return null;
                                // },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getTitleForTextFiled("Full Name"),
                              const SizedBox(height: 4),
                              TextFormField(
                                controller: _nameController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: getInputDecoration(hintText: "Full Name"),
                                validator: (value) => Validators.required(value),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getTitleForTextFiled("Gender"),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: DropdownButtonFormField<String>(
                                items: [
                                  'Male',
                                  'Female',
                                ].map((String gender) {
                                  return DropdownMenuItem<String>(
                                    value: gender,
                                    child: Text(gender),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    _genderController.text = newValue;
                                  }
                                },
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF111928),
                                ),
                                decoration: getInputDecoration(hintText: "Gender"),
                                validator: (value) => Validators.required(value),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getTitleForTextFiled("Date of birth"),
                              const SizedBox(height: 4),
                              TextFormField(
                                controller: _dobController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                onTap: _dateValidator,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF111928)),
                                decoration: getInputDecoration(hintText: "DD/MM/YY"),
                                validator: (value) {
                                  final date = _dobController.text;
                                  debugPrint("validator value $value");
                                  debugPrint("validator value $date");

                                  return Validators.date(date);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getTitleForTextFiled("Code"),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: DropdownButtonFormField<String>(
                                value: _codeController.text.isEmpty ? null : _codeController.text,
                                items: ['+91', '+92'].map((String title) {
                                  return DropdownMenuItem<String>(
                                    value: title,
                                    child: Text(title),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    _codeController.text = newValue;
                                  }
                                },
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF111928),
                                ),
                                decoration: getInputDecoration(hintText: "+91"),
                                validator: (value) => Validators.required(value),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getTitleForTextFiled("Mobile Number"),
                              const SizedBox(height: 4),
                              TextFormField(
                                controller: _mobileNumberController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                keyboardType: TextInputType.number,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF111928)),
                                decoration: getInputDecoration(hintText: "7863207096"),
                                //

                                validator: (value) => Validators.phone(value),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getTitleForTextFiled("Email Address"),
                        const SizedBox(height: 4),
                        TextFormField(
                          controller: _emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF111928)),
                          keyboardType: TextInputType.emailAddress,
                          decoration: getInputDecoration(hintText: "abc@gmail.com"),
                          validator: (value) => Validators.email(_emailController.text),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Alternate Email Address",
                            style: TextStyle(color: Colors.grey, fontSize: 14)),
                        const SizedBox(height: 4),
                        TextFormField(
                            controller: _alterEmailController,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF111928)),
                            keyboardType: TextInputType.emailAddress,
                            decoration: getInputDecoration(hintText: "abc@gmail.com")),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getTitleForTextFiled("Nationality"),
                        const SizedBox(height: 4),
                        DropdownButtonFormField<String>(
                          value: _nationalController.text.isEmpty ? null : _nationalController.text,
                          items: [
                            'Indian',
                            'foreigner',
                          ].map((String gender) {
                            return DropdownMenuItem<String>(
                              value: gender,
                              child: Text(gender),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              _nationalController.text = newValue;
                            }
                          },
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF111928),
                          ),
                          decoration: getInputDecoration(hintText: "Indian"),
                          validator: (value) => Validators.required(value),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getTitleForTextFiled("Address Line 1"),
                        const SizedBox(height: 4),
                        TextFormField(
                          controller: addressA,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF111928)),
                          decoration: getInputDecoration(hintText: "Address Line 1"),
                          validator: (value) => Validators.required(value),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Address Line 2",
                            style: TextStyle(color: Colors.grey, fontSize: 14)),
                        const SizedBox(height: 4),
                        TextFormField(
                            controller: _addressController,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF111928)),
                            decoration: getInputDecoration(hintText: "Address Line 2")),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getTitleForTextFiled("Country"),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: DropdownButtonFormField<String>(
                                value: _countryController.text.isEmpty
                                    ? null
                                    : _countryController.text,
                                items: ['India', 'Other'].map((String gender) {
                                  return DropdownMenuItem<String>(
                                    value: gender,
                                    child: Text(gender),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    _countryController.text = newValue;
                                  }
                                },
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF111928),
                                ),
                                decoration: getInputDecoration(hintText: "India"),
                                validator: (value) => Validators.required(value),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getTitleForTextFiled("State/Province"),
                              const SizedBox(height: 4),
                              DropdownButtonFormField<String>(
                                value: _stateController.text.isEmpty ? null : _stateController.text,
                                items: [
                                  'Rajasthan',
                                  'Haryana',
                                  'Punjab',
                                  'J & K',
                                  'Gujarat',
                                  'M.P',
                                  'TamilNadu'
                                ].map((String gender) {
                                  return DropdownMenuItem<String>(
                                    value: gender,
                                    child: Text(gender),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    _stateController.text = newValue;
                                  }
                                },
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF111928),
                                ),
                                decoration: getInputDecoration(hintText: "Rajasthan"),
                                validator: (value) => Validators.required(value),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getTitleForTextFiled("City"),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: TextFormField(
                                controller: _cityController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF111928)),
                                decoration: getInputDecoration(hintText: "Udaipur"),
                                validator: (value) => Validators.required(value),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getTitleForTextFiled("ZipCode/PinCode"),
                              const SizedBox(height: 4),
                              TextFormField(
                                controller: _pinCodeController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF111928)),
                                decoration: getInputDecoration(hintText: "335501"),
                                validator: (value) => validatorBuilder([
                                  () => Validators.required(value),
                                  () => Validators.maxLength(value, 6),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value;
                            });
                          },
                        ),
                        const Text(
                          "I have GST No.",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    if (isChecked == true)
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "GST Details",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF066AC9)),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                height: 10,
                                width: MediaQuery.of(context).size.width * 0.62,
                                child: const Divider(
                                  height: 2,
                                  color: Colors.black38,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  getTitleForTextFiled("GST Number"),
                                  const SizedBox(height: 4),
                                  IntrinsicWidth(
                                    child: TextFormField(
                                      controller: _gstController,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF111928)),
                                      decoration: getInputDecoration(hintText: "015042410"),
                                      validator: (value) => Validators.required(value),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    getTitleForTextFiled("Company Name"),
                                    const SizedBox(height: 4),
                                    TextFormField(
                                      controller: _comNameController,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF111928)),
                                      decoration: getInputDecoration(hintText: "Company Name"),
                                      validator: (value) => Validators.required(value),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Company Address",
                                  style: TextStyle(color: Colors.grey, fontSize: 14)),
                              const SizedBox(
                                height: 4,
                              ),
                              TextFormField(
                                controller: _comAddressController,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF111928)),
                                decoration:
                                    getInputDecoration(hintText: "Enter Your Company Address"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size(152, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          if (_globalKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('ok')),
                            );
                          }
                        },
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
