
## <a name="dat-design-api"></a> Reservasi hotel menggunakan yii2 basic

![image](https://user-images.githubusercontent.com/79428814/155652094-d69c2daf-1d97-4898-9292-4c392f3a498e.png)

## <a name="dat-design-api">yii2-widget-datetimepicker 

### Installation

Untuk menginstal, jalankan 
  
```shell
 composer require kartik-v/yii2-widget-datetimepicker "*"
```

![image](https://user-images.githubusercontent.com/79428814/155654143-3a60d466-c656-41b8-9ad3-399358c80382.png)

Setelah itu tambahkan ini pada composer.json pada file reservasi
  
```json
"yiisoft/yii2-bootstrap" : "*",  
```
  
  ![image](https://user-images.githubusercontent.com/79428814/155654222-64cb389b-a684-433e-bc5a-c196df48ed66.png)

kemudian lakukan composer update pada command promt
```json
composer update  
```
  ![image](https://user-images.githubusercontent.com/79428814/155654866-0615bbaa-3dc7-4ccf-8ca3-ef5eafe256c0.png)
![image](https://user-images.githubusercontent.com/79428814/155654888-18533188-c01c-4733-92a8-b9e36f4fd41c.png)

  Lakukan pemanggilan sebagai berikut pada _form.php
  
  ```shell
  use kartik\datetime\DateTimePicker;
  
  <?= $form->field($model, 'checkin')->widget(DateTimePicker::classname(), [ 
				'options' => ['placeholder' => 'Pilih Check In ...'], 
				'pluginOptions' => [ 
				'autoclose' => true, 
				'format' => 'yyyy-mm-dd HH:ii:ss', 
				'todayHighlight' => true
	] 
	]); ?>
  ```
  
![image](https://user-images.githubusercontent.com/79428814/155655189-4148db62-ff8b-45ef-af94-303ae7b7f4fa.png)


