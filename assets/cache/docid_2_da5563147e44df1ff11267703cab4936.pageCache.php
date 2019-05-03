<?php die('Unauthorized access.'); ?>a:41:{s:2:"id";s:1:"2";s:4:"type";s:8:"document";s:11:"contentType";s:9:"text/html";s:9:"pagetitle";s:8:"Contacts";s:9:"longtitle";s:0:"";s:11:"description";s:0:"";s:5:"alias";s:5:"about";s:15:"link_attributes";s:0:"";s:9:"published";s:1:"1";s:8:"pub_date";s:1:"0";s:10:"unpub_date";s:1:"0";s:6:"parent";s:1:"0";s:8:"isfolder";s:1:"0";s:9:"introtext";s:0:"";s:7:"content";s:0:"";s:8:"richtext";s:1:"1";s:8:"template";s:1:"7";s:9:"menuindex";s:1:"1";s:10:"searchable";s:1:"1";s:9:"cacheable";s:1:"1";s:9:"createdby";s:1:"1";s:9:"createdon";s:10:"1556275874";s:8:"editedby";s:1:"1";s:8:"editedon";s:10:"1556277438";s:7:"deleted";s:1:"0";s:9:"deletedon";s:1:"0";s:9:"deletedby";s:1:"0";s:11:"publishedon";s:10:"1556275874";s:11:"publishedby";s:1:"1";s:9:"menutitle";s:8:"Contacts";s:7:"donthit";s:1:"0";s:10:"privateweb";s:1:"0";s:10:"privatemgr";s:1:"0";s:13:"content_dispo";s:1:"0";s:8:"hidemenu";s:1:"0";s:13:"alias_visible";s:1:"1";s:4:"desc";a:5:{i:0;s:4:"desc";i:1;s:13:"[*introtext*]";i:2;s:0:"";i:3;s:0:"";i:4;s:8:"textarea";}s:4:"keyw";a:5:{i:0;s:4:"keyw";i:1;s:13:"[*pagetitle*]";i:2;s:0:"";i:3;s:0:"";i:4;s:4:"text";}s:7:"noIndex";a:5:{i:0;s:7:"noIndex";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:8:"checkbox";}s:4:"titl";a:5:{i:0;s:4:"titl";i:1;s:29:"[*pagetitle*] - [(site_name)]";i:2;s:0:"";i:3;s:0:"";i:4;s:4:"text";}s:17:"__MODxDocGroups__";s:0:"";}<!--__MODxCacheSpliter__--><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Contacts - Test_Work</title>

<meta name="keywords" content="Contacts" />
<meta name="description" content="" />
<base href="http://tw_dmy3yy.test/"/>

<link href="theme/css/templatemo_style.css" rel="stylesheet" type="text/css" />

<link href="theme/css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />

</head>

<body>

<div id="templatemo_menu_wrapper">

    <div id="templatemo_menu">
    
		<ul><li class="first level1 odd"><a href="/">Homepage</a></li><li class="level1 current even"><a href="/about.html">Contacts</a></li><li class="level1 odd"><a href="/gallery.html">Gallery</a></li><li class="last level1 even"><a href="/blog.html">Blog</a></li></ul>



    </div> <!-- end of templatemo_menu -->

</div> <!-- end of menu wrapper -->

<div id="templatemo_header_wrapper">
  <div id="templatemo_header">
    <div id="site_title">
      <h1><a href="index.html"> <img src="theme/images/templatemo_logo.png" alt="logo" /> </a></h1>
    </div>
  </div>
	<div class="bread">
		
		<nav class="breadcrumbs"><ul class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList"><li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem"><meta itemprop="position" content="1" /><a href="http://tw_dmy3yy.test/" title="Homepage"  itemprop="item"><span itemprop="name">Homepage</span></a></li><li class="active" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem"><meta itemprop="position" content="2" /><span itemprop="item">Contacts</span></li></ul></nav>
		
	</div>
  <!-- header -->
<div id="templatemo_content_wrapper">
	<div id="templatemo_content">
    	
         <h1>Contact Us</h1>
			<div class="two_column float_l">
            
            	<div id="contact_form">

				<h3>Contact Form</h3>

					
					[!FormLister?
					&formid=`basic`
					&rules=`
					{
						"name":{
							"required":"Обязательно введите имя",
							"matches":{
								"params":"\/^[\\pL\\s\\-']++$\/uD",
								"message":"Введите имя правильно"
							}
						},
						"email":{
							"required":"Обязательно введите email",
							"email":"Введите email правильно"
						},
						"subject":{
							"required":"Обязательно введите тему сообщения"
						},
						"message":{
							"required":"Обязательно введите сообщение",
							"minLength":{
								"params":10,
								"message":"Сообщение должно быть не менее 10 символов"
							}
						}
					}`
					&formTpl=`@CODE:
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<div class="well">
								<form class="form-horizontal" method="post">
									<input type="hidden" name="formid" value="basic">
									<div class="form-group[+name.errorClass+][+name.requiredClass+]">
										<label for="name">Name:</label>
										<div class="col-sm-10">
											<input type="text" class="required input_field form-control" id="name" placeholder="Name" name="name" value="[+name.value+]">
											[+name.error+]
										</div>
									</div>
									<div class="cleaner_h10"></div>
									<div class="form-group[+email.errorClass+][+email.requiredClass+]">
										<label for="email">Email:</label>
										<div class="col-sm-10">
											<input type="text" class="required input_field form-control" id="email" placeholder="Email" name="email" value="[+email.value+]">
											[+email.error+]
										</div>
									</div>
									<div class="cleaner_h10"></div>
									<div class="form-group[+subject.errorClass+][+subject.requiredClass+]">
										<label for="subject">Subject:</label>
										<div class="col-sm-10">
											<input type="text" class="required input_field form-control" id="subject" name="subject" value="[+subject.value+]">
											[+subject.error+]
										</div>
									</div>
									<div class="cleaner_h10"></div>
									<div class="form-group[+message.errorClass+][+message.requiredClass+]">
										<label for="message">Message:</label>
										<div class="col-sm-10">
											<textarea class="required form-control" id="message" placeholder="Your message" name="message" rows="10">[+message+]</textarea>
											[+message.error+]
										</div>
									</div>
									<div class="cleaner_h10"></div>
									[+form.messages+]
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<input type="submit" class="submit_btn" value="Send">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>`
					&to=`zeeynnik@gmail.com`
					&ccSender=`1`
					&ccSenderField=`email`
					&ccSenderTpl=`@CODE:Спасибо за обращение, [+name.value+]`
					&reportTpl=`@CODE:
					<p>Имя: [+name.value+]</p>
					<p>Тема: [+subject.value+]</p>
					<p>Email: <a href="mailto:[+email.value+]">[+email.value+]</a></p>
					<p>Сообщение: [+message:strip_tags:nl2br+]</p>
					`
					&errorClass=` has-error`
					&requiredClass=` has-warning`
					&subject=`Новое сообщение`
					&messagesOuterTpl=`@CODE:<div class="alert alert-danger" role="alert">[+messages+]</div>`
					&errorTpl=`@CODE:<span class="help-block">[+message+]</span>`
					&debug=`1`
					!]
                
            </div>
                
            </div> 
            
    
    	<div class="cleaner"></div>
	</div> <!-- end of content -->
</div> <!-- end of content_wrapper -->
<div id="templatemo_copyright_wrapper">
	<div id="templatemo_copyright">
    
		Copyright © 2048 <a href="#">Your Company Name</a>

        
    </div> <!-- end of templatemo_copyright -->
</div> <!-- end of copyright wrapper -->

</body>
</html>