<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>详情-简单</title>
    <link rel="stylesheet" href="css/tail.css">
</head>
<body class="body">
<section class="sm_section"  style=" text-align:center;">
    <form action="" method="post">
        <div class="tail_div">
            <div class="left tail_div_min">
                <label>姓名：</label><input type="text" placeholder="输入姓名"/>
            </div>
            <div class="left tail_div_min">
                <label>出生日期：</label><input type="date"  />
            </div>
        </div>
        <div class="tail_div">
            <div class="left tail_div_min">
                <label>电话号码：</label><input type="tel" />
            </div>
            <div class="left tail_div_min">
                <label>家庭人数：</label><input type="number"  />
            </div>
        </div>
        <div class="tail_div">
            <div class="left tail_div_min">
                <label>栋：</label><select><option>xxxx</option></select>
            </div>
            <div class="left tail_div_min">
                <label>房间号：</label><select>
                <optgroup label="标题">
                    <option>xxxxx</option>
                </optgroup>
            </select>
            </div>
        </div>
        <div class="tail_div">
            <div class="tail_div_max left">
                <label>网关：</label><input type="url">
            </div>
        </div>
		<div class="tail_div">
        <div class="tail_div">
            <div class="tail_div">
                <div class="tail_div_max left">
                    <label class="max_textarea_lable">具体说明：</label><textarea></textarea>
                </div>
            </div>
        </div>
		</div>

<div class="div_foot" style=" text-align:center;"><button class="save_but">保存</button><button class="close_but" onClick="can()">取消</button></div>
    </form>
</section>
<script src="js/jquery/jQuery-2.2.0.min.js"></script>
<script>
    function can(){

        var index =parent.layer.getFrameIndex(window.name);

        parent.layer.close(index);
    }
</script>

</body>
</html>