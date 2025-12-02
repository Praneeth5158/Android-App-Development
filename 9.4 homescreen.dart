import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Color colorchange = Colors.white;
  bool liked = false;
  List<String> foodItems = ["Home Foods","Biryani","Pizza", "Shawarma","Burgers","Idly","FrenchFries","Dosa"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorchange,
      body:Column(
        children: [
          Text("What's on your mind",style :TextStyle(
            fontSize:25,
            color:Colors.black
          )),
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodItems.length,
              itemBuilder: (context,index){
                return Card(
                  color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text("${foodItems[index]}"),
                        GestureDetector(
                          child: Icon(Icons.favorite,
                          color: liked == true ? Colors.red : Colors.white,),
                          
                          onDoubleTap: (){
                            setState(() {
                              liked = !liked;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                );
              }),
          ),
          SizedBox(
            height: 400,
            child: Carousel(
              boxFit: BoxFit.contain,
              autoplay: true,
              autoplayDuration: Duration(seconds: 3),
              animationCurve: Curves.fastLinearToSlowEaseIn,
              // onImageChange: (val1,val2){
              //   val1 == 0 && val2 ==1 ? colorchange = Colors.black : val1 == 1 && val2 == 2 ? colorchange = Colors.blue : colorchange = Colors.orange;
              //   setState(() {
                  
              //   });
                
              // },
              onImageTap: (val1){
                val1 == 0 ? colorchange = Colors.orange : val1 == 1 ? colorchange = Colors.black : colorchange = Colors.green;
                setState(() {
                  
                });
              },

              // dotIncreasedColor: Colors.red,
              // dotIncreaseSize: 3,
              // showIndicator: true,
              images: [
                NetworkImage("data:image/webp;base64,UklGRuYSAABXRUJQVlA4INoSAADwiACdASo4ATgBPulsrlMpJb+4JhKao/AdCWduDji6Aq0hSmAqMeGzIf30/29tlorz7dzP7bn1w75NfNP//HhDElxP9b3lXfXO8qNsYfX/ZP/0yH/94KWIydXm0dd/8fUra8qlON5/I4UBuRHkoyz9n2iAVNSN+Ed1cvpvkvg/35s1O4Iznhho5KfPbo/4FF5DL1lZmkSb8Cry9QvHGHRsD4mWgvAW/dH5A5nAxe88zqA9OsLaKn/W11iaxGLS+4yvkMN0BoKYfLnp1b6c8H/EKrXBHyfap2t7l88gnnnwO27BxrtuBZvuEKQeQMI/n/VNjMH6amPTjxk6CkAAn0P00qkISyz3mQRih37U3nOetCING3UEH+sbgTQcLmTmVAGa/iiaKVblXXeRP0hwwuCpwVqaiI7a1LtEmCslTSpjh3zcVgWjQKariTZMettyX9iL45kWEBXLDnQY6UmVFp2KwEapfu9vsiQMBw5/Xre9dfi+rHR+wU9N/52r+9kCm3qCeT3v4aV59tgEqHnfxwdl+GbfAdoIyGpnaNWXryfAagA6fZh7gSvITuhy3XPLqAiGhptexqSOASqRowRPgoo7vMl/3qdcRmpi0JrdYnslaWWdKQBMMscTx+MooSiZMANDx3hrQCs4MHSBiowQRlRfoRtz9IFtR/+1bfA+cVWX0aeUmi4mQbmwLnWAXodiaFKzRN8T9YiI4HOm4JmFccKB8L2+sTQF53+6fijGMNj6gIv8N6auIWnpQIcvv3lQNCmLh8qG3Wr83zNyO9QFcbcjIL7d5Fw5gsyNtIF+7Gaea9+sfQY5Wdp8Sb1yZcJywzasnYHA48V2FRVrXlA5T9YSKCBX+6TOe7p9PnGkduT66c5rtS3+KIEHeLITyQM2cuUBsQEwGm5SNtX+UVHKVGbxE7yiAGt2KX+AxYCW1Vobt0R2OEIp/rcR/3EjDtmkKQhrzwWNx69KE0YEt+vbB82tGRCR/44Fg+XDAAfvSpT7XT4kWmNiTAbwTdNnefvkK3LG2vazg0OG0fk7v4rCokzBEgAT1W/qdrf3XVepmgSd30V2BMvDjkgv0oex3yj6ud6FxeMbXMfiJBJ7CZ05wnFwdxS8HIBKEvKdRl8L0XoHImVPrKvKP7MRsyP+kF85t/M4RNMEpCCIEjrqKx1kiYjwg8jrKFkBCOmx1pcj2Lw1vu+WLsAGkAM8kTj/V1XF8G4e1DQRvKZ7PhWfQIK/o2iI5zZ5tOzzs5+TcLgNXh3PxHtJwQLI+fQSHipbNTssRwp+iuctIbqcb9q2joGdBt0XGMYAUgT9JqtQ3YIlnAtJDnKRcNvDbglVXcf5vaIeAbm1j5ObA0al/24XT6HVH4q+XeTTRh/LC5HqOmjHcVM/3NqYCaWXm/6c4axmfqkvDCEtsjEuIkVulUopJKxKANWmqvgKck6CimP2Z8RGadYTd3fuXVLBElwjIpYj9B1uwAAA/uhBdS53+uo6sn4FGbtgoRyDcSbSNCFWNwadXyIBWSV0uj2xcVewMRNkeoRuxOhDe0Pae7vECQb1Qw1EEHzILWVjYZkhiCwj6fDePdzOEo/zQO+tji+2G0OR1GwtgoZxEP6wUnD9dgAACDfRMNOHoQdKfLivkNAlfOm5JbbcTTVMjOLn0lMdbughOKdui1wDWyXgeuyx0hP/jXk57Nlzn9ZJQiI63NypwSJp+DDeiVaY4Lbqi9mlPRt6jBTVg405bJ4oNMrqaW0jAIsYIAD7kZaa0okg9YtIqdDnw/G8WZ+cCzFbEMLeS9+H4qFWBMDaoViBX8WKDcEESBlCPf+vKeU7JBsF+O8lYK8SVfcHCiUzNfcOY+VLZP/x6ApT71RfoT56tUNwNCX5ckKD+Ln0/e0CCEJccRogtd01PWriHOlAkYJNDqjtWtGsyjD0UT43GF40PQyjti/Hczsu3JdNpmEx3+//ypfsbJHK8gWepv4EhW1erY4p1ZmKMEKArgAZNGsaRYUnCTTOIi37an1XRwU2qDjFmEHgCMpgIBfQqNZxfh8lJ4sQSbSbkpHKjx2KpcNpMaOrU/zwbi8JbIL/XPoEmbyCQTiTVMbyesum6sjm0Q+/E3aGp3Gfpv70ZB5ybQDsrkvTqOiXVRVTw+3X27v6QClNx74uJOAbTJyVFvlIh8wfnQZQiUkxsFJ3NbadpoRNPHHae6JHz10D/ZgJVIUawFeeFZBFFVpwZQ/eF0BRlNjtoULvaNp+mACFcrBA+AwxOi550Aa464CJSm5HKatFaQmBiRHiMPKDf9hKVYWI3HBTLZThSA5zS+NeVAH/KWN6eJMTQMcc0d35FBFf1LBAaAAa7Z891gWXkpSz2UBzoW4mLf8cxRPm8Q6256kxjeewoiObC2uTAWb+tu24WcONN7njx3ysmbDBlMd3H555MAS8IBVm5B47vnD2usfwU4g4arpm+DBkQMt6ZH+ojbTJV3TJ1DdmcOli3Qtok+m7MG1ep2jt7ZVmUotRwrdGRSCz+QoeovE24EzVCBNOXyr5J7Rr/28D2ZxSmfc32r2+rref/XvUYQ4ewEkOJJKUEc20a4uJThxuNHviVJXXX5lHABfkEqBMb01DwO3DWohY4alpDzIUCTuDp/f/rYCzK6fMuVrnwXPo0TGl+ZHZvO6qlNcfZTcSrdPMqJItFMmf104h6D9RBlM4kFyRSFoUjFvFv6beagOlmcUGLEx+W0MYCDN5HDoG4P6k4wCmEKoSKUeckmeYa98YSx9V/mRlApMCMRdsKs0b/36UXB6ynZGCDyMiZq1TaeVjlqBZD4KL9AuY1idRHDC8AJktFIrg0uNMixTvpZVyraiE8x5FUm3vf+qwyYbtUO4SGsR2pSzlqm1/ku49Vm05txShVP0g8zqYkdtuj5r4S9uwYzPo9MEtdL6ZGPyqwKV89x7rv9BSP1YTlnOXEWxS+OANcljnizZhN4pLLwyIkjqyAJlab+u2uwfprY11XVr8wj0AcZx2c2XKNRACNAlW5IzcikSw3VQWiiBaJxeBg0n4HHF9e+BrXzzcfJDQk5iimVqsqrqnZtwZNBddyn0BxRkX7c7ZmnyYkwZ9nXkE9qCaRTOnmW5yIAw574jyn1BHQEviq7YO0dWZzaADIQFr9RMqGSkz8CWQ0FyvfNrzXFZ7H6eKEBHCZS5WXR360668DyeqYZFVWkykw9BIGUCElbwZUgctew1NApSgaYBs9lohsxwhVpKXs2yr05fVTV/8Ik2tlvpDpeD3VUu3BmcGGQ1PCTwj76BPZXax95RUEhCcUPvV60WKCvrOPWMmexAxHntA7eEKgaGDIvtKsTF/bwHeN5AaxeNYq58xEQMAfLMjN9hN2ji4yphUo/0uEjGs6yJtwr73G0G7f4Dd0nFZDd5J2eRpcGw4KqmGW6MogTICVnh92mGvXz6Fm3sg95HajXGXm/Og7bfvjuplaOaoW+q5oYQxpJ5qjNZJ1J3Qn7WOPBkKKXwJbkXmaptiVM8M7SSxXzwrU4Q4l9b8ieHf6I8c8Y1B4w74MSN0lFz3uJaE6L3RVXZ0zXdU2CToYgeCK7teBM4omDods3lnzLPUqrdgveYS1doZwHxJ3rZDJUukw5tUge2vffhufmut4OzX2T02SOQbaYHbUZ6JULF2Yme8W1v9Iq+duMOz0E66UIgb0cF0yhZaxFBhogRbvr2Nj+gkMEP6+usRZuRgEeT6imp/pN5bAbFJC38HNW2DBXzVEnBLqwSZXtYPD5H2nBkHeS6muoXI4as9VhhhG3Sk+CrSeFW+TgMFsqZ49ojkfP4a7VwDtCgcyvZYEePksGlR0vUs/yr5JMOozy7jYOZLoTbZkhJ3BxicaPcCrgezE9Ua02eLSonl/wsB7YzDzi4iD+4xhmwwB8lmPV9scWtMM3HEs9q0XoIz1p7gvuJd1Tx277cfUvH6OTYYdg4Qbb5C/GLQTWRXWyiH0uBhCo/2UhovaiHyTAZs66b1Irsm56lTSbEIVFr7KJwU1zU0/fbW+cirZIoUz6HcJuS3vzO2lc9xRjp3NTAtCIlxbh8uBwevDFRepPWzrO8AvlznK26eyuVkmoDHvSeTy44qBJm0x2b6Y5NJGrwQeu06uJhrVyczC7JMHo3Ew5lMFIsUoob8mMk0gE2Ax3Ws1pVSZ9HV+xvrU0+hKa0jzV9AadYg0VJPd2G5sOPqIXai4fOfNAfgFwndlPTAI5QlgJ3cHC/+McKQ5YIUz0a/aG2O9vh/+eEuvSNbbO2Q7q/nYncXtiM59i7xa/eVjsmAtL6EiXjJ5ywBB2XjhMW4LkecAG/gYNT3Hky2ASe4Ii2VgxwWl5FZSMlGKM1/61e7DXNTSXLezfkFtfeFLX90DSAzYAcdlvXnFDmcvhmc+TMoZ0pNCzLWlCst00jPhgsWfJfrYdEAx/MbCVdMPpmG1Pb+0nPVS1m7F5ujHoDfs7Pl2pOfV3kkoTMT2NbV4NQPRI3Fj42dCX93gB5ParbFt11bQft1zsUNA55oGBNJnyF15ZfgHIQp49Ag5NExdn4aTfbVeVNteXYFryMoLpqVCPCi+FX/x0K0E7uLBXeIv0mADEorbQqyE027xgqxeeZwMEkj4fPlMKhNN4dKFGEabnaKJJZ23jWVazJnwlIEOIqKkZCSWygfQTIL6GiwVyTn9QL2bQsUCMrGnZ8aYGBgBY1lijj3WqnZVB2/ZPWZZ6wl4mrA2noIuyzDSH6K6Ic2WCvwUyqENgkXs91ZFgws+IQTEC/F00HBP7L162apUnAO8RQSCQ2jHIqsJvF0DiAsjDMND27iSbOsnvgcuhyFKN6rXy8cya6LluJ7z4li9vbpobLHGH+aLIEtH63e6cKNhyChbeGvucO75C6thBwiR4F9j1OH2vHAQ9JAqPi/XnWTPrtMfZHM1BsCdJPE5i3iISikk9NIWClYOrVrr92HriQFksfJsFJ6DfK+kSQE/I9EWSsCajOJOqVcc4g8uRFGkplELchYuX4c8tfBVQQ86eEMjuSFUT4w1bQZTLhksSNznhr6nO1iizB0OHXL5StrWb3hJtkyM+E+MnvEj63JlTUplzO8FujfTlVL+dbG3RHAU4IaDaVQ4xmwRWH2Mbce6WKCMb2qbivROWPiwByp7sY+aUzaOhz0Nbh7OXphgdu4GkPfYzit1rhuS+DETkt/gaNvNGPNMcHVZNcK+5ZuwvMaqFOe0rETJsHFx/CAHqLtnQpba1gyk4gA2hG/5Pu3S0Q4e7Le7PBG1bNDNrehnQCDbd2ALzVaGy48gkMoXFx2rgpyZRuRyPPMxbB7dsBydC55y/VowtF5F8JWB3TpMN6K9SH5sBSx6FRcwm8tVLuhuy0gDYll/OArLIBSHj+zUoTQ9HbWdk0Dh3S8WofLjkGhVNrw3BN7xC7OqSwHqgdVqFBFRjBgmXEPcZm0ZfezRwqG7eG7QYNKkIzF7bJvedPzeLuGhXAGAzScLvwck4eHj0WkO/Rg1nhaMJ5MoVATI35DDaZWrOAAeyzxeokZZ4TkdJCHl/eXJn7eJZdtkh9iTo6TdIzXVGSVEkXMAzqwoF85TTw4vBD58/lST3/2+cNHPucdx5gVWeowCAksR4lhYSc6g+hQM910j/NQYnSjdIeKQmSNkythNsgAcspdv43OEYs2d9iRm5I/jE1ynnGK6WJhs2TzBXu+zS68kCsSzRejETziaYlA36l+CPJMbJ1KxBREtiKxizKG5lZ5Ifv7IFo7Rs/hpvC+LPtghi+M/0e9LcXa/HPb+DbkrUztuIUPCJzrIp7MSEexrG8l/vzc8GaqQy8NFHFOx4lpOQQo2WashWBZ/OcQmLkUsaqkRjPX4LjFIMj6jRX+aO/hqV04Fn35s1faDnMgQO5QAGOu9bf6EURY36GzaA+RU7mHvxIHma8kFpjx8Joh/2baXZ04VIuGJ85woRWpXjOdXAdpnqbjj6AACihqb7MALOyNKNZB6QfX2tHxYTzR+7BCl1AhnWV+9RK08oEb+ehq8qFm88F/+bQ/D0SkHgUoyHErM9kpOF1V9B1An5cLQj4Q0E6mbltGEUfblqqOEM3W/g9csA6H0YLr13E0EzLC13tLIl7Wa0MKfqMi61M5pjMD2HOpc0/MLPVAJqjOhs8PQJ+f1NyIi4R2CcsRB1LBkvTvlEa2MCkak50sydUYC0Wf07gB3YA8JsdOs29Z6nbRXWtocbzzeStuhm2Cqe7XQ4Shu/dfgEtf2lIAjRHTYxD9AuSdkndsvU0bjNYdAW52xwKflAzT2d2hmFD2FXCbdoRJGsQvN64oFcTP03MjAD2HkEkeiWRjYo4CafBBJXP6E8PYXU13HKuuBpFgBeocVcOSng/mEtBKrRUwnMSiOO6T0IOm3qr3N1rcCzVxhj6Yv7rtgKe8cfBxBpgsC+QbGjWZU2VTl6lItySlqNLimXSxCFOFKCAAAA==",
                ),
                NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmmy9zN-EAn_r0jOm84edG1XOYmYTtIMnONj-eGqHKiZATXJxGK4j0fgD9LNbW5FnDTEVv-C8ch2Stm6BK16yhGNmVgewWuDNDgMNv-mD2mw&s=10"),
                NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCWxrB-ORxY7BBb1obzUW0kgCkfn8Ash9IKnNyR0WHBlsUyMIcfLu8Vyl-O3xXWTpZiOyYdPV3x_pxm6HaT9vZVY-78BQuA2Sa-WVTEm02&s=10"),
            
              ],
            ),
          )
          
        ],
      )
    );
    
  }
}
