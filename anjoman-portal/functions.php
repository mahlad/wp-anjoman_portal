<?php 
	add_theme_support('menus');
	add_theme_support('html5');
	add_theme_support('post-thumbnails');
/*----------News post type----------*/
	add_action('init','create_news_type');
	function create_news_type(){
		$lables=array(
			'name'=>'خبرها',
			'singular_name' =>'خبرها',
			'add_new' => 'افزودن خبر',
			'add_new_item' => 'افزودن خبر جدید',
			'edit_item' => 'ویرایش خبر',
			'new_item' => 'خبر جدید',
			'view_item' => 'نمایش خبر',
			'search_items' => 'جستجوی خبر',
			'not_found' => 'خبر مورد نظر یافت نشد',
			'not_found_in_trash' => 'خبر مورد نظر در زباله دان یافت نشد',
			'parent_item_colon' => 'خبر',
			'menu_name' => 'خبرها'
			);
		$args=array(
		'label' => 'خبرها',
		'labels' => $lables,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor', 'thumbnail','excerpt'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'news'),
		'query_var' => true,
		'can_export' => true
		);
		register_post_type('news',$args);
	}
/*----------Services News post type----------*/
	add_action('init','create_shahrdarinews_type');
	function create_shahrdarinews_type(){
		$lables=array(
			'name'=>'اخبار خدمات شهرداری',
			'singular_name' =>'اخبار خدمات شهرداری',
			'add_new' => 'افزودن خبر',
			'add_new_item' => 'افزودن خبر جدید',
			'edit_item' => 'ویرایش خبر',
			'new_item' => 'خبر جدید',
			'view_item' => 'نمایش خبر',
			'search_items' => 'جستجوی خبر',
			'not_found' => 'خبر مورد نظر یافت نشد',
			'not_found_in_trash' => 'خبر مورد نظر در زباله دان یافت نشد',
			'parent_item_colon' => 'خبر',
			'menu_name' => 'اخبار خدمات شهرداری'
			);
		$args=array(
		'label' => 'اخبار خدمات شهرداری',
		'labels' => $lables,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor', 'thumbnail','excerpt'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'shahrdarinews'),
		'query_var' => true,
		'can_export' => true
		);
		register_post_type('shahrdarinews',$args);
	}
/*----------entertainment News post type----------*/
	add_action('init','create_entertainmentnews_type');
	function create_entertainmentnews_type(){
		$lables=array(
			'name'=>'دانستنی های ساخت و ساز',
			'singular_name' =>'دانستنی های ساخت و ساز',
			'add_new' => 'افزودن مطلب',
			'add_new_item' => 'افزودن مطلب جدید',
			'edit_item' => 'ویرایش مطلب',
			'new_item' => 'مطلب جدید',
			'view_item' => 'نمایش مطلب',
			'search_items' => 'جستجوی مطلب',
			'not_found' => 'مطلب مورد نظر یافت نشد',
			'not_found_in_trash' => 'مطلب مورد نظر در زباله دان یافت نشد',
			'parent_item_colon' => 'مطلب',
			'menu_name' => 'دانستنی های ساخت و ساز'
			);
		$args=array(
		'label' => 'دانستنی های ساخت و ساز',
		'labels' => $lables,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor', 'thumbnail','excerpt'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'entertainmentnews'),
		'query_var' => true,
		'can_export' => true
		);
		register_post_type('entertainmentnews',$args);
	}
/*----------Contact post type----------*/
	add_action('init','create_contact_type');
	function create_contact_type(){
		$labels=array(
			'name'=>'اطلاعات تماس',
			'singular_name' => 'اطلاعات تماس',
			'add_new_item' =>'افزودن اطلاعات تماس',
			'add_new'=>'اطلاعات تماس جدید',
			'edit_item' => 'ویرایش اطلاعات تماس',
			'view_item' => 'نمایش اطلاعات تماس',
			'menu_name' => 'اطلاعات تماس'	
			);
		$args=array(
			'label'=>'اطلاعات تماس',
			'labels'=>$labels,
			'public'=>true,
			'exclude_from_search'=>true,
			'publicly_queryable'=>true,
			'show_ui'=>true,
			'show_in_menu'=>true,
			'show_in_nav_menus'=>true,
			'menu_position'=>25,
			'capability_type'=>'post',
			'hierarchical'=>false,
			'supports'=>array('title','thumbnail'),
			'has_archive'=>true,
			'rewrite'=>array('slug'=>'contact'),
			'query_var'=>true,
			'can_export'=>true

			);
		register_post_type('contact',$args);

	}
/*--------Contact Metaboxe---------*/
 	add_action('add_meta_boxes','add_cnt_meta');
 	add_action('save_post','save_cnt_meta');
 	function add_cnt_meta(){
 		add_meta_box('my meta','فرم ثبت اطلاعات تماس','cnt_inner_meta_box','contact','advanced','default');
 	}
 	function cnt_inner_meta_box($post){
 		wp_nonce_field(plugin_basename(__FILE__), 'wpnonce');
 		$post_id=$post->ID;
 		$name=get_post_meta($post_id,'name',true);
 		$phone=get_post_meta($post_id,'phone',true);
		$mobile=get_post_meta($post_id,'mobile',true);
		$email=get_post_meta($post_id,'email',true);
		$address=get_post_meta($post_id,'address',true);
		$position=get_post_meta($post_id,'position',true);
		?>
  	<label for="name_field">نام:</label></br><input type="text" name="name_field" id="name_field" value="<?php echo $name; ?>" size="40"/></br>
  	<label for="phone_field">تلفن ثابت:</label></br><input type="text" name="phone_field" id="phone_field" value="<?php echo $phone; ?>" size="40"/></br>
  	<label for="mobile_field">تلفن همراه:</label></br><input type="text" name="mobile_field" id="mobile_field" value="<?php echo $mobile; ?>" size="40"/></br>
  	<label for="email_field">ایمیل:</label></br><input type="text" name="email_field" id="email_field" value="<?php echo $email; ?>" size="40"/></br>
  	<label for="address_field">آدرس:</label></br><input type="text" name="address_field" id="address_field" value="<?php echo $address; ?>" size="40"/></br>
  	<label for="position_field">سمت:</label></br><input type="text" name="position_field" id="position_field" value="<?php echo $position; ?>" size="40"/>
 	<?php
	
}
function save_cnt_meta($post_id){
	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) 
      return;
	if('contact'==$_POST['post_type'])
	{
		if ( is_admin() ){
			$name=$_POST['name_field'];
			$phone=$_POST['phone_field'];
			$mobile=$_POST['mobile_field'];
			$email=$_POST['email_field'];
			$address=$_POST['address_field'];
			$massage=$_POST['massage_field'];
			update_post_meta($post_id,'name',$name);
			update_post_meta($post_id,'phone',$phone);
			update_post_meta($post_id,'mobile',$mobile);
			update_post_meta($post_id,'email',$email);
			update_post_meta($post_id,'address',$address);
			update_post_meta($post_id,'massage',$massage);
		}else return;
	}
	else
        return;
}

/*--------Upload Metaboxe---------*/

add_action('post_edit_form_tag', 'update_edit_form'); 
add_action('load-post.php', 'metabox_setup' );
add_action('load-post-new.php', 'metabox_setup' );
add_action('save_post', 'metabox_save', 10, 2 );


function update_edit_form() {  
    echo ' enctype="multipart/form-data"';  
}

function metabox_setup() {
	
	add_meta_box(
		'gsp_post_meta2',
		'فایل',	
		'metabox_content',		
		'forms',				
		'advanced',		
		'high'	
	);
	add_meta_box(
		'gsp_post_meta2',
		'فایل',	
		'metabox_content',		
		'circulars',				
		'advanced',		
		'high'	
	);

}

function metabox_content($post){
	$profile_picture =  get_post_meta( $post->ID, 'profile_picture', true );
	if($profile_picture['url']){
		$img = $profile_picture['url'];
		echo '<div id="profile_picture"><a href="'.$img.'" target="_blank"><img src="'.$img.'"></a>
		</div>
		<br />';	
	}

?>
	<input id="wp_custom_attachment" name="wp_custom_attachment" value="" size="25" type="file">
 <?php
}


function metabox_save($post_id){
	if(!empty($_FILES['wp_custom_attachment']['name'])) {	
		$supported_types = array('image/gif','image/bmp','image/jpeg','image/png','application/pdf','application/msword');  		
		$arr_file_type = wp_check_filetype(basename($_FILES['wp_custom_attachment']['name']));  
		$uploaded_type = $arr_file_type['type'];  
		if(in_array($uploaded_type, $supported_types)) {  
			$upload = wp_upload_bits($_FILES['wp_custom_attachment']['name'], null, file_get_contents($_FILES['wp_custom_attachment']['tmp_name'])); 
			if(isset($upload['error']) && $upload['error'] != 0) {  
				//wp_die('There was an error uploading your file. The error is: ' . $upload['error']);  
			} else {
				unset($upload['error']);
				$upload['file'] = str_replace(chr(92),"/",$upload['file']);
				update_post_meta($post_id ,'profile_picture', $upload);  
			}
		} else {
			//wp_die("The file type that you've uploaded is not a PDF.");  
		}
	} 
}
/*-----------Forms Post type----------*/
add_action('init','craet_forms_type'); 
function craet_forms_type(){
	$labels=array(
		'name' => 'فرم ها',
		'singular_name' => 'فرم ها',
		'add_new' => 'افزودن فرم',
		'add_new_item' => 'افزودن فرم جدید',
		'edit_item' => 'ویرایش فرم',
		'new_item' => 'فرم جدید',
		'view_item' => 'نمایش فرم',
		'search_items' => 'جستجوی فرم',
		'not_found' => 'فرم مورد نظر یافت نشد',
		'not_found_in_trash' => 'فرم مورد نظر در زباله دان یافت نشد',
		'parent_item_colon' => 'فرم',
		'menu_name' => 'فرم ها'
		);
	$args=array(
		'label' => 'فرم ها',
		'labels' => $labels,
		'description' => 'در این قسمت می توان مقالات آموزشی یا اخبار جدید را قرار داد',
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','thumbnail'),
		'rewrite' => array('slug' => 'forms'),
		'has_archive' => true,
		'query_var' => true,
		'can_export' => true,

		);
	register_post_type('forms', $args);
}
/*-----------Circular Post type----------*/
add_action('init','craet_circulars_type'); 
function craet_circulars_type(){
	$labels=array(
		'name' => 'بخشنامه ها',
		'singular_name' => 'بخشنامه ها',
		'add_new' => 'افزودن مطلب',
		'add_new_item' => 'افزودن مطلب جدید',
		'edit_item' => 'ویرایش مطلب',
		'new_item' => 'مطلب جدید',
		'view_item' => 'نمایش مطلب',
		'search_items' => 'جستجوی مطلب',
		'not_found' => 'مطلب مورد نظر یافت نشد',
		'not_found_in_trash' => 'مطلب مورد نظر در زباله دان یافت نشد',
		'parent_item_colon' => 'مطلب',
		'menu_name' => 'بخشنامه ها'
		);
	$args=array(
		'label' => 'بخشنامه ها',
		'labels' => $labels,
		'description' => 'در این قسمت می توان مقالات آموزشی یا اخبار جدید را قرار داد',
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','thumbnail'),
		'rewrite' => array('slug' => 'circulars'),
		'has_archive' => true,
		'query_var' => true,
		'can_export' => true,

		);
	register_post_type('circulars', $args);
}
/*----------Comments post type----------*/
	add_action('init','create_comment_type');
	function create_comment_type(){
		$lables=array(
			'name'=>'نظر سنجی',
			'singular_name' =>'نظر سنجی',
			'add_new' => 'افزودن موضوع',
			'add_new_item' => 'افزودن موضوع جدید',
			'edit_item' => 'ویرایش موضوع',
			'new_item' => 'موضوع جدید',
			'view_item' => 'نمایش موضوع',
			'search_items' => 'جستجوی موضوع',
			'not_found' => 'موضوع مورد نظر یافت نشد',
			'not_found_in_trash' => 'موضوع مورد نظر در زباله دان یافت نشد',
			'parent_item_colon' => 'موضوع',
			'menu_name' => 'نظر سنجی'
			);
		$args=array(
		'label' => 'نظر سنجی',
		'labels' => $lables,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor', 'thumbnail','comments'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'comment'),
		'query_var' => true,
		'can_export' => true
		);
		register_post_type('comment',$args);
	}
/*-----------Download Post type----------*/
// add_action('init','craet_learn_type'); 
// function craet_learn_type(){
// 	$labels=array(
// 		'name' => 'دانلود',
// 		'singular_name' => 'دانلود',
// 		'add_new' => 'افزودن مطلب',
// 		'add_new_item' => 'افزودن مطلب جدید',
// 		'edit_item' => 'ویرایش مطلب',
// 		'new_item' => 'مطلب جدید',
// 		'view_item' => 'نمایش مطلب',
// 		'search_items' => 'جستجوی مطلب',
// 		'not_found' => 'مطلب مورد نظر یافت نشد',
// 		'not_found_in_trash' => 'مطلب مورد نظر در زباله دان یافت نشد',
// 		'parent_item_colon' => 'مطلب',
// 		'menu_name' => 'دانلود'
// 		);
// 	$args=array(
// 		'label' => 'دانلود',
// 		'labels' => $labels,
// 		'description' => 'در این قسمت می توان مقالات آموزشی یا اخبار جدید را قرار داد',
// 		'public' => true,
// 		'exclude_from_search' => true,
// 		'publicly_queryable' => true,
// 		'show_ui' => true,
// 		'show_in_nav_menus' => true,
// 		'show_in_menu' => true,
// 		'menu_position' => 25,
// 		'capability_type' => 'post',
// 		'hierarchical' => false,
// 		'supports' => array('title','editor','excerpt','comments'),
// 		'rewrite' => array('slug' => 'learn'),
// 		'has_archive' => true,
// 		'query_var' => true,
// 		'can_export' => true,

// 		);
// 	register_post_type('learn', $args);
// }
// /*----------Products post type----------*/
// 	add_action('init','create_product_type');
// 	function create_product_type(){
// 		$lables=array(
// 			'name'=>'محصولات',
// 			'singular_name' =>'محصولات',
// 			'add_new' => 'افزودن محصول',
// 			'add_new_item' => 'افزودن محصول جدید',
// 			'edit_item' => 'ویرایش محصول',
// 			'new_item' => 'محصول جدید',
// 			'view_item' => 'نمایش محصول',
// 			'search_items' => 'جستجوی محصول',
// 			'not_found' => 'محصول مورد نظر یافت نشد',
// 			'not_found_in_trash' => 'محصول مورد نظر در زباله دان یافت نشد',
// 			'parent_item_colon' => 'محصول',
// 			'menu_name' => 'محصولات'
// 			);
// 		$args=array(
// 		'label' => 'محصولات',
// 		'labels' => $lables,
// 		'public' => true,
// 		'exclude_from_search' => true,
// 		'publicly_queryable' => true,
// 		'show_ui' => true,
// 		'show_in_nav_menus' => true,
// 		'show_in_menu' => true,
// 		'menu_position' => 25,
// 		'capability_type' => 'post',
// 		'hierarchical' => false,
// 		'supports' => array('title','editor', 'thumbnail','excerpt'),
// 		'has_archive' => true,
// 		'rewrite' => array('slug'=>'product'),
// 		'query_var' => true,
// 		'can_export' => true
// 		);
// 		register_post_type('product',$args);
// 	}

// /*-----------Marketting Post type----------*/
// add_action('init','creat_marketting_type');
// function creat_marketting_type(){
// 	$labels=array(
// 		'name' => 'تبلیغات',
// 		'singular_name' => 'تبلیغات',
// 		'add_new' => 'افزودن تبلیغ',
// 		'add_new_item' => 'افزودن تبلیغ جدید',
// 		'edit_item' => 'ویرایش تبیلغ',
// 		'new_item' => 'تبلیغ جدید',
// 		'view_item' => 'نمایش تبلیغ',
// 		'search_items' => 'جستجوی تبلیغ',
// 		'not_found' => 'تبلیغ مورد نظر یافت نشد',
// 		'not_found_in_trash' => 'تبلیغ مورد نظر در زباله دان یافت نشد',
// 		'parent_item_colon' => 'تبلیغ',
// 		'menu_name' => 'تبلیغات'
// 		);
// 	$args=array(
// 		'label' => 'تبلیغات',
// 		'labels' => $labels,
// 		'description' => 'این قسمت برای تبلیغات شرکت ها طراحی شده است',
// 		'public' => true,
// 		'exclude_from_search' => true,
// 		'publicly_queryable' => true,
// 		'show_ui' => true,
// 		'show_in_nav_menus' => true,
// 		'show_in_menu' => true,
// 		'menu_position' => 25,
// 		'capability_type' => 'post',
// 		'hierarchical' => false,
// 		'supports' => array('title','thumbnail'),
// 		'rewrite' => array('slug' => 'marketting'),
// 		'has_archive' => true,
// 		'query_var' => true,
// 		'can_export' => true,

// 		);
// 	register_post_type('marketting', $args);
// 	add_post_type_support( 'marketting', 'thumbnail' );
	
// }
/*----------Info ANJmember post type----------*/
	// add_action('init','create_infoanjmember_type');
	// function create_infoanjmember_type(){
	// 	$lables=array(
	// 		'name'=>'اطلاعات اعضا انجمن',
	// 		'singular_name' =>'اطلاعات اعضا انجمن',
	// 		'add_new' => 'افزودن عضو',
	// 		'add_new_item' => 'افزودن عضو جدید',
	// 		'edit_item' => 'ویرایش عضو',
	// 		'new_item' => 'عضو جدید',
	// 		'view_item' => 'نمایش عضو',
	// 		'search_items' => 'جستجوی عضو',
	// 		'not_found' => 'عضو مورد نظر یافت نشد',
	// 		'not_found_in_trash' => 'عضو مورد نظر در زباله دان یافت نشد',
	// 		'parent_item_colon' => 'اطلاعات اعضا انجمن',
	// 		'menu_name' => 'اطلاعات اعضا انجمن'
	// 		);
	// 	$args=array(
	// 	'label' => 'اطلاعات اعضا انجمن',
	// 	'labels' => $lables,
	// 	'public' => true,
	// 	'exclude_from_search' => true,
	// 	'publicly_queryable' => true,
	// 	'show_ui' => true,
	// 	'show_in_nav_menus' => true,
	// 	'show_in_menu' => true,
	// 	'menu_position' => 25,
	// 	'capability_type' => 'post',
	// 	'hierarchical' => false,
	// 	'supports' => array('title','editor', 'thumbnail','excerpt'),
	// 	'has_archive' => true,
	// 	'rewrite' => array('slug'=>'infoanjmember'),
	// 	'query_var' => true,
	// 	'can_export' => true
	// 	);
	// 	register_post_type('infoanjmember',$args);
	// }
 ?>