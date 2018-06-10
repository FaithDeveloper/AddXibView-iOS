# 스크롤 뷰에 xib View 불러오기

동일한 Storyboard 안에  ScrollView와 View을 설정하는 방식은 간단한 UI에서는 작업이 편하나

많은 양의 UI이라면 말이 달라지게 됩니다. 따라서 View을 xib로 나눠서 관리하는 방식이 있습니다.

제가 공유드릴 방식은  ScrollView에 xib을 불러와 호출하는 방식을 소개하려고 합니다.

<br/>

### **1.** Storyboard에 ScrollView 을 넣어주고, ScrollView의 크기는 화면에 가득차게 합니다.

![img](https://t1.daumcdn.net/cfile/tistory/9937C1465A39B0F317)![img](https://t1.daumcdn.net/cfile/tistory/996E25465A39B0F412)

![img](https://t1.daumcdn.net/cfile/tistory/995936465A39B0F414)

명확한 구분을 하기 위해서는 상,하,좌,우 에 10 정도 패딩 값을 넣어주시는 것도 좋습니다.

![img](https://t1.daumcdn.net/cfile/tistory/996FFC435A39B16A04)

<br/>

### **2.** xib 파일을 생성 (command + N) 과 클래스 이름을 지정합니다.

그림에서는 파일 이름은 CustomView 로 생성하였습니다.

![img](https://t1.daumcdn.net/cfile/tistory/998CB8465A39B1EC10)   ![img](https://t1.daumcdn.net/cfile/tistory/996B9A465A39B1D215)

![img](https://t1.daumcdn.net/cfile/tistory/997025425A39B19217)

<br/>

### **3.** swift 파일을 생성 (command + N) 후 class에 UIView 을 상속 받습니다.

```swift
import UIKit
class CustomView: UIView{
  ...
}
```

<br/>

### **4.**  ViwController.swift 에 기존에 만들었던 ScrollView을 연결합니다.

```swift
@IBOutlet var addScrollView: UIScrollView!
```

<br/>

### **5.** xib을 로드해 ScollView에 AddView 해줍니다.

loadNibNamed의 첫 번째 인자는 "xib 이름"을 넣고, as! 을 통하여 CustomView로 다운 캐스팅을 합니다.

```swift
let custom = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?[0] as! CustomView
self.addScrollView.addSubview(custom)
```

<br/>

### **6.** "Run" 하여 xib이 호출 되는 것을 감상합니다.

![img](https://t1.daumcdn.net/cfile/tistory/9991C6425A39B21115)

View의 크기가 증가 되면 View의 크기를 측정하여 ScrollViw의 크기를 코딩으로 증가하는 방식으로 다양한 화면을 구성할 수 있을 것으로 예상됩니다.

 
