import UIKit


// reverseInParentheses
// foo(bar)baz(blim) ->foorabbazmilm
//func solution(inputString: String) -> String {
//    if !inputString.contains("("){
//        return inputString
//    }
//    let str = Array(inputString)
//    var s = ""
//   var counter = 0
//    let len = str.count
//    var item = 0
//    var jitem = 0
//    var t = 0
//    s = String(str[0 ..< (str.firstIndex(of: "(") ?? 0)])
//
//    while item < len{
//        if str[item] == "("{
//            counter -= 1
//             jitem = item+1
//              print(t)
//            if t > 1{
//                s += String(str[t ..< item])
//
//            }
//            while jitem < len{
//                if str[jitem] == ")"{
//                    counter += 1
//                }
//                else if str[jitem] == "("{
//                    counter -= 1
//                }
//
//                if counter == 0{
//                    s += solution(inputString: String(str[item+1..<jitem])).reversed()
//                    item = jitem
//                    break
//                }
//                jitem+=1
//            }
//
//        }
//        if str[item] == ")"{
//           t = item + 1
//            print(t)
//        }
//        item += 1
//    }
//    s += String(str[jitem+1 ..< len])
//    return s
//    }


//Add Border

//func solution(picture: [String]) -> [String] {
//var ab = [String]()
//    let len = picture[0].count
//    let col = picture.count
//  var s = ""
//
//    for item in 0 ..< len+2{
//        s += "*"
//    }
//    ab.append(s)
//
//    s=""
//    for value in picture{
//        s += "*"
//        s += value
//        s += "*"
//        ab.append(s)
//        s = ""
//    }
//    s = ""
//    for item in 0 ..< len+2{
//        s += "*"
//    }
//    ab.append(s)
//
//
//    return ab
//}

// are similar
//func solution(a: [Int], b: [Int]) -> Bool {
//
//    var t = 0
//    var counter = 0
//    for (index,value) in a.enumerated(){
//        let sth = value != b[index] && counter > 0
//
//        if sth {
//            print("1")
//            if value == b[t] && a[t] == b[index] && counter < 2{
//                counter += 1
//                print(counter)
//            }else
//            {  return false  }
//
//        } else
//        if value != b[index]{
//
//            t = index
//            counter += 1
//
//        }
//
//
//    }
//    return true
//}


//func solution(inputString: String) -> Bool {
//var value = 0
//
//var chars:[String:Int]=[:]
//    for item in inputString{
//        if let times = chars[String(item)]{
//            chars.updateValue(times+1, forKey: String(item))
//        }else{
//            chars.updateValue(1, forKey: String(item))
//        }
//    }
//    print(chars.values)
//    for item in chars{
//        if item.value % 2 != 0 {
//            value += 1
//        }
//        if value > 1 {
//            return false
//
//        }
//    }
//    return true
//}


//isIPv4Address

//func solution(inputString: String) -> Bool {
//
//    // 250 - 255 -> 25[0...5]
//    //200 - 249 -> 2[0..4][0..9]
//    //100 - 199 -> 1[0..9][0..9]
//    //10 - 99 -> [1..9][0..9]
//    //0 - 9 -> [0..9]
//
//
//    let arr = (inputString.split(separator: "."))
//    print(arr)
//    if arr.count != 4 || inputString.contains(".."){return false}
//    for item in arr{
//
//        if Int(item) ?? 300 > 255 || (item.hasPrefix("0") && item.count > 1){return false}
//
//
//    }
//return true
//}

//avoidObstacles!
//func solution(inputArray: [Int]) -> Int {
//
//    var t = true
//    let arr = inputArray.sorted()
//    var value = 2
//
//    while value < arr[arr.endIndex-1]+1{
//        for item in 0 ..< arr.count{
//
//            if arr[item] % value == 0{
//                t = false
//                break}
//
//        }
//        if t{return value}
//        value += 1
//
//        t = true
//    }
//
//    return value
//}


// Box Blur
//func AvarGet(image:[[Int]],stR:Int,stC:Int) -> Int{
//    var S = 0
//
//    for item in stR-1...stR+1{
//        for jtem in stC-1...stC+1{
//        S += image[item][jtem]
//            }
//
//    }
//    return (S / 9)
//}
//func solution(image: [[Int]]) -> [[Int]] {
//
//var value = [[Int]]()
//
//    let row = image.count
//
//    let com = image[0].count
//
//    for item in 1..<row-1{
//        var forNow = [Int]()
//        for jtem in 1..<com-1 {
//
//            forNow.append(AvarGet(image: image, stR: item, stC: jtem))
//
//        }
//        value.append(forNow)
//    }
//    return value
//}

//Minesweeper
//func solution(matrix: [[Bool]]) -> [[Int]] {
//var value = [[Int]]()
//    let row = matrix.count
//
//    let col = matrix[0].count
//    var S = 0
//    var newlist = [Int]()
//    for item in 0..<row{
//        newlist = []
//        for jtem in 0..<col{
//
//
//                if item > 0 && matrix[item-1][jtem]{S += 1}
//                if item < row-1 && matrix[item+1][jtem]{S += 1}
//                if jtem > 0 && matrix[item][jtem-1]{S += 1}
//                if jtem < col-1 && matrix[item][jtem+1]{S += 1}
//
//                if item > 0 && jtem > 0 && matrix[item-1][jtem-1]{S += 1 }
//                if item < row-1 && jtem < col-1 && matrix[item+1][jtem+1]{S += 1}
//                if item > 0 && jtem < col-1 && matrix[item-1][jtem+1]{S += 1}
//                if item < row-1 && jtem > 0 && matrix[item+1][jtem-1]{S += 1}
//
//            newlist.append(S)
//
//            S = 0
//        }
//        //print(newlist)
//        value.append(newlist)
//    }
//
//    return value
//}

//variableName


//func solution(name: String) -> Bool {
//
//
//    for (index,value) in name.enumerated(){
//        if !((("A")...("Z")).contains(value) ||
//            (("a")...("z")).contains(value) ||
//           ( index != 0 && (("0") ... ("9")).contains(value)) ||
//    (value == "_") )
//        {return false}
//
//    }
//    return true
//}


//alphabeticShift
// A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, A
//  a,b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, a

//print(UInt8(ascii: "9"))//a-> 97  z->122         A-> 65   Z-> 90 0 -> 48 9-> 57
//let s = "\u{41}"
//let c = Character(UnicodeScalar(65))
//let s1 = String(UnicodeScalar(UInt8(65)))
//var aa = "a"
//aa.utf8

//func solution(inputString: String) -> String {
//
//    var valu = ""
//    for value in inputString.utf8{
//        if value == 122{valu += String(UnicodeScalar(UInt8(97)))}
//        else if value == 90{valu += String(UnicodeScalar(UInt8(65)))}
//        else
//        {valu  += String(UnicodeScalar(UInt8(value+1)))}
//    }
//    return valu
//}

//chessBoardCellColor -> interseting  question
//func solution(cell1: String, cell2: String) -> Bool {
//    let list = Array(cell1.utf8)
//    let list1 = Array(cell2.utf8)
//    print(list,list1)
//    let a = list[0] % 2 == list[1] % 2
//    let b = list1[0] % 2 == list1[1] % 2
//    if (a == true && b == true) ||
//        (a == false && b == false)
//    {return true}
//    return false
//}

//func solution(deposit: Int, rate: Int, threshold: Int) -> Int {
//    var dep:Double = Double(deposit)
//    let rat:Double = Double(rate)
// dep = dep*(rat+100)/100
//var value = 1
//
//while dep < Double(threshold) && value < 600{
//  dep = dep * (rat + 100)/100
//
//  value += 1
//}
//return value
//}


//stringsRearrangement
//func calculateFactors(n:[String]) -> [[String]] {
//    if n.count == 2 {
//        return [[n[0],n[1]],[n[1],n[0]]]
//    }
//
//    var result = [[String]]()
//
//    for item in 0..<n.count{
//
//        var r = n
//        r.remove(at: item)
//        let ab = calculateFactors(n: r)
//
//        for i in ab{
//            var y = i
//            y.append(n[item])
//            result.append(y)
//        }
//    }
//
//    return result
//}
//print(calculateFactors(n:["abc","abb","bbb"]))
//
//
//func difer(str:String,str1:String) -> Bool{
//
//    let list = Array(str1)
//    var v = 0
//
//    for (index,item) in str.enumerated(){
//        if item != list[index]{
//            v += 1
//        }
//    }
//    if v == 1 {return true}
//    return false
//}
//
//func check(inputArray: [String]) -> Bool {
//    var value = true
//    for item in 1..<inputArray.count{
//        value = value && difer(str: inputArray[item-1], str1: inputArray[item])
//    }
//return value
//}
//func solution(inputArray:[String]) -> Bool{
//    var value = false
//    let mat = calculateFactors(n: inputArray)
//   print(check(inputArray: inputArray))
//    for item in mat
//    {    value = value || check(inputArray: item)
//
//    }
//    return value
//}



//firstDigit # 35
//func solution(inputString: String) -> Character {
//    let list = ("0"..."9")
//    for item in inputString{
//        print(item)
//        if list.contains(String(item))
//         {
//            return item
//        }
//    }
//    return "1"
//}

//differentSymbolsNaive #36

//func solution(s: String) -> Int {
//    var mySet = Set<String>()
//    for item in s{
//        mySet.insert(String(item))
//
//    }
//    return mySet.count
//}

//arrayMaxConsecutiveSum # 37
//func solution(inputArray: [Int], k: Int) -> Int {
//    var sum = [Int]()
//for i in 0..<inputArray.count-k+1{
//    var s = 0
//    for j in 0 ..< k {
//        s += inputArray[i+j]
//
//    }
//    sum.append(s)
//
//}
//
//    return sum.max() ?? 0
//}
//growingPlant     #38

//func solution(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int
//{
//    if weight1 + weight2 <= maxW{
//        return value2 + value1
//    }
//    if value1 < value2{
//        return (weight2 <= maxW) ? value2 : value1
//    }
//    if value1 > value2{
//        return (weight1 <= maxW) ? value1 : value2
//    }
//    return(weight1 < weight2) ? value1 : value2
//}
//var str = "Abdulla Bardiyev"

//func solution(inputString: String) -> String {
//var str = ""
//    var t = 0
//    for (index,value) in inputString.enumerated(){
//        if ["0","1","2","3","4","5","6","7","8","9"].contains(value) {
//            t = index
//            print(t)
//        }else {str.append(contentsOf: inputString.prefix(through:String.Index(encodedOffset: t)))
//            return str}
//    }
//
//
//    return ""
//}
//func solution(bishop: String, pawn: String) -> Bool {
//
//let listbishop = Array(bishop.utf8)
//let listpawn = Array(pawn.utf8)
//print(listpawn,listbishop)
//    let value = abs(Int32(listbishop[0]) - Int32(listpawn[0])) == abs(Int32(listbishop[1]) - Int32( listpawn[1]))
//    if value{
//        print(listpawn,listbishop)
//    return true
//}
//return false
//
//}


// isBuetifullString
//func solution(inputString: String) -> Bool {
//    var list = Array(inputString.utf8)
//    list.sort()
//    var valu1 = 0
//    var value2 = 100000
//    var latter = list[0]
//    if latter != 97{return false}
//print(list)
//    for (index,value) in list.enumerated(){
//        if value == latter{
//            valu1 += 1
//        } else {
//            if valu1 > value2 || Int32(list[index]) - Int32(latter) != 1
//            {print(latter,list[index],valu1,value2)
//                return false}
//            latter = list[index]
//            value2 = valu1
//            valu1 = 1
//        }
//    }
//     if valu1 > value2  {return false}
//    return true
//    }

//func solution(address: String) -> String {
//
//    if let b = address.lastIndex(where: {$0 == "@"}){
//
//        return String(address.suffix(address.count - b.utf16Offset(in:  address)-1))
//    }
//
//   return ""
//}


//buildPalindrome  #45
//func check(list:String)->Bool{
//    let str = Array(list)
//    if str.count < 4 {if str[0] == str[str.count-1]{return true}
//    else
//        {return false}
//
//    }
//
//    return (str[0] == str[list.count-1]) && check(list: String(str[1...str.count-2]))
//}
//
//func solution(st: String) -> String {
//
//var list = Array(st)
//
//    if check(list: st){return String(list)}
//
//    for i in 0 ..< list.count{
//        var arr = list
//
//
//        arr += list.prefix(i+1).reversed()

//        if check(list: String(arr)){return String(arr)}
//    }
//    print("aaaaaaaaaaa")
//    return String(list+list)
//}

//Elections Winners   #46

//func solution(votes: [Int], k: Int) -> Int {
//var voter = 0
//    var value = true
//    let max = votes.max()
//    if k == 0{
//        for i in 0..<votes.count{
//            if votes[i] == max{
//                if value{value = false}
//                else {return 0}
//
//            }
//        }
//    return 1}
//    for i in 0 ..< votes.count{
//
//        if votes[i] + k > max  ?? 0{voter += 1}
//    }
//
//    return voter
//}

//Is MAC48 Address?  #47

//func solution(inputString: String) -> Bool {
//    if inputString.contains("--") ||
//        inputString.firstIndex(of: "-")?.utf16Offset(in: inputString) == 0 ||
//        inputString.lastIndex(of: "-")?.utf16Offset(in: inputString) == inputString.count-1
//    {return false}
//
//let list = inputString.split(separator: "-")
//var value = true
//    print(list)
//for item in list{
//    if item.count != 2{
//        return false}
//    for col in item{
//    value = value && ("0123456789ABCDEF").contains(col)
//
//    }
//
//}
//return value
//}

// lineEncoding   #48


//func Identify(str:String)->String{
//    if str.count == 1 {return str}
//    let a = Array(str)
//    return String(str.count) + String(a[0])
//}
//
//func solution(s: String) -> String {
//    let s1 = Array(s)
//var str = ""
//var start = 0
//for (index,item) in s1.enumerated(){
//    if s1[start] != item {
//        str += Identify(str: String(s1[start..<index]))
//        start = index}
//
//}
//    return str + Identify(str: String(s1[start..<s1.count]))
//}
// chessKnight #50
//func solution(cell: String) -> Int {
//    var counter = 0
//
//    let p = [-1,-1,1,1,2,-2,-2,2]
//    let Knight = Array(cell.utf16)
//    print(Knight)
//    for i in 0 ..< 8{
//        let newX = Int(Knight[0])-97 + p[i]
//        let newY = Int(Knight[1])-48 + p[7-i]
//        if newX <= 8 && newX > 0 && newY <= 8 && newY > 0{counter += 1}
//    }
//    return counter
//}

//deleteDigit  #51

//func solution(n: Int) -> Int {
//var num = 0
//var str = Array(String(n).utf16)
//    //print(str)
//for i in 1 ..< str.count{
//    if str[i-1] < str[i]{str.remove(at: i-1)
//    break}
//    else if i == str.count - 1 {str.remove(at: i)
//    break}
//}
//for item in str{
//    num = num * 10 + (Int(item)-48)
//}
//return num
//}


// longestWord # 52
//func solution(text: String) -> String {
//let str = "qwertyuiopasdfghjklzxcvbnm QWERTYUIOPASDFGHJKLZXCVBNM"
//    var list = [String]()
//    for item in text{
//        if str.contains(item){list.append(String(item))}
//    }
//    var str1:String = list.joined()
//
//    let st = str1.split(separator: " ")
//
//    var max = 0
//    for i in 1..<st.count{
//        if st[max].count < st[i].count {max = i}
//    }
//    return String(st[max])
//}


//func solution(time: String) -> Bool {
//    let clock = time.split(separator: ":")
//    print(clock)
//    if Int(clock[0]) ?? 12 >= 0 && Int(clock[0]) ?? 12 < 25 &&
//Int(clock[1]) ?? 12 >= 0 && Int(clock[1]) ?? 12 < 60 {return true}
//return false
//}


//func solution(inputString: String) -> Int {
//let num = ("1234567890")
//var list = [String]()
//for item in inputString{
//    if num.contains(item)
//    {list.append(String(item))}
//    else {list.append(" ")}
//
//}
//    let list1:String = list.joined()
//    let arr = list1.split(separator: " ")
//    print(arr)
//var count = 0
//for item in arr{
//    if let x = Int(item){
//        count += x
//    }
//}
//return count
//}
//func solution(matrix: [[Int]]) -> Int {
//
//    let row = matrix[0].count
//    let col = matrix.count
//
//    var mat = [[Int]]()
//    for i in 0 ..< col-1{
//        for j in 0 ..< row-1{
//            if !mat.contains([matrix[i][j],matrix[i][j+1],matrix[i+1][j],matrix[i+1][j+1]]){
//                mat.append([matrix[i][j],matrix[i][j+1],matrix[i+1][j],matrix[i+1][j+1]])
//            }
//
//
//        }
//    }
//
//    return mat.count
//}
//digitsProduct  #56
//func solution(product:Int)->Int{
//    if product == 0 {return 10}
//    if product < 10 {return product}
//
//    var n = product
//    var i = 9
//    while i >= 2{
//        if product % i == 0 {
//            let a = solution(product: product / i)
//            return (a == -1) ?  -1: a * 10 + i
//
//        }
//        i -= 1
//    }
//
//
//    return -1
//}

// # 57 File naming
//func addSufix(str:[String],arr:[Int],arl:[Int])->[String]{
//    var count = 1
//    var t = 0
//    var satr = [String]()
//    for i in 0 ..< str.count{
//        if i == arl[t] {
//           t+=1
//            satr.append(str[i])
//            continue
//        }else{
//
//            if arl.contains(count){
//                let mx = arr.max() ?? 100
//                for j in count...(mx+1){
//                    if !arr.contains(j){
//                        satr.append(str[i]+"("+String(j)+")")
//                        break
//                    }
//                }
//            }else {
//
//                satr.append(str[i]+"("+String(count)+")")
//            }
//        }
//        count += 1
//    }
//    return satr
//}
//
//func find(str:[String])->Int{
//    var index = 0
//
//    return index
//}
//func solution(names: [String]) -> [String] {
//var str = names
//    var count = 0
//    for i in 1 ..< names.count{
//        for j in 0 ..< i{
//            if names[i] == names[j]{count += 1}
//        }
//
//        if count != 0{str[i] = str[i] + "("+String(count)+")"
//            count = 0}
//        else if names[i].hasSuffix(")"){str[i] = str[i] + "(1)"}
//
//    }
//
//return str
//}

//func solution(min1: Int, min2_10: Int, min11: Int, s: Int) -> Int {
//var sum = s
//var time = 0
//if min1 < s{
//    sum = sum - min1
//time = 1
//} else  {return 0}
//
//if sum < min2_10{return 1}
//
//if sum >= min2_10 * 9{
//    time = 10
//    sum -= min2_10 * 9
//    print(sum)
//}
//    else {
//        time += sum / min2_10
//        return time
//    }
//
//  if sum >= min11 {
//    print(time,sum,min11)
//      time += sum / min11
//}
//
//return time
//
//
//
//}

//Knapsack Light
//func solution(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
//
//    if weight1 + weight2 <= maxW{
//        return value1 + value2
//    }
//    if value1 > value2 && maxW >= weight1{
//        return value1
//    }
//    else if value2 > value1 && maxW >= weight2{
//        return value2
//    }
//    if maxW >= weight1{return value1}
//    if maxW >= weight2{return value2}
//    return 0
//
//}
func change(n:Int) -> [Int]{
    if n < 2{return [n]}
    var list = [Int]()
    list.append(contentsOf: change(n:n/2))
    list.append(n%2)
    return list
    
}
func rechange(list:[Int])->Int{
   var value = 0
    let n = list.count-1
    
    for i in 0...n{
        value += (list[i]) * Int(pow(2, Double(n-i)))
    }
    return value
}
func solution(n: Int, k: Int) -> Int {
  var list = change(n: n)
    if list.count > k{
        list[list.count-k] = 0
      return rechange(list: list)
     }
  return n
}

print(rechange(list: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]))
print(change(n: 2147483647).count)
print(solution(n: 2147483647, k: 16))
//2147450879





var char = "s"
var char2 = "dsjkhdfs"
