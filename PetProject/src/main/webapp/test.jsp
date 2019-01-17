<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>留言板</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<script src="js/jquery-1.7.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/vue.js"></script>
<script>
window.onload=function()
{
new Vue({
el:'#box',
data:{
mydata:[],
name:'',
age:'',
nowindex:-100
},
methods:{
add:function(){
this.mydata.push(
{
name:this.name,
   age:this.age
} 
)
this.name='';
this.age='';
},
del:function(n){
if(n==-8)
{
this.mydata=[];
}
else
{
this.mydata.splice(n,1);
}
}
 }
  });
}
</script>
</head>
<body>
<div class="container" id="box">
<form role="form">
<div class="form-group">
<label for="username">用户名：</label>
<input type="text" id="username" class="form-control" placeholder="用户名" v-model="name"/>
</div>
<div class="form-group">
<label for="age">年&nbsp;&nbsp;&nbsp;龄：</label>
<input type="text" id="age" class="form-control" placeholder="年龄" v-model="age"/>
</div>
<div class="form-group">
<input type="button" id="submit" value="添加" class="btn-block btn-primary" v-on:click="add()"/>
<input type="reset" id="reset" value="重置" class="btn-block btn-danger"/>
</div>
</form>
<hr/>
<table class="table table-bordered text-center table-hover">
<caption class="h4 text-info text-center">用户信息</caption>
<tr class="text-danger">
<th class="text-center">序号</th>
<th class="text-center">姓名</th>
<th class="text-center">年龄</th>
<th class="text-center">操作</th>
</tr>
<tr v-for="i in mydata">
<td>{{$index+1}}</td>
<td>{{i.name}}</td>
<td>{{i.age}}</td>
<td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#layer"
v-on:click='nowindex=$index;'>删除</button></td>
</tr>
<tr>
<td colspan="4" v-show="mydata.length!=0">
<button class="btn btn-danger center" v-on:click="nowindex=-8" data-toggle="modal" data-target="#layer">全部删除</button>
</td>
</tr>
<tr class="text-muted text-center" v-show="mydata.length==0">
<td colspan="4">
暂无数据
</td>
</tr>
</table>
<!--模态框 弹出框-->
<div role="dialog"  id="layer" class="modal">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">
<span>&times;</span>
   </button>
   <h4 class="modal-title">确认删除了吗？</h4>
</div>
<div class="modal-body">
<button data-dismiss="modal" class="btn btn-primary btn-ms" v-on:click="del(nowindex)">确定</button>
<button data-dismiss="modal" type="reset" class="btn btn-danger btn-ms">取消</button>
   </div>
</div>
</div>
</div>
</div>
</body>
</html>
