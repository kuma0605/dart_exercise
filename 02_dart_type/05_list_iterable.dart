void main(){
    var nums = [1,2,3];

    nums.forEach((element){
        print(element);
    });

    var newNums =  nums.map((e){
      return e*e;
    });
    print(newNums.toList());

    //where
    bool isOdd(n) => n%2 == 1;
    var oddNum = nums.where(isOdd);
    print(oddNum);

    //any 监测是否有奇数
    print(nums.any(isOdd));

    //every
    print(nums.every(isOdd));

    //扩展
    var pairs = [[1,2],[3,4]];
    var flattened = pairs.expand((element)=>element).toList();
    print(flattened);

    //折叠
    int result = nums.fold(2, (p, element) => p*element);

}