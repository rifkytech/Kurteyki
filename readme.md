function coupon($l){
		$coupon = "PR".substr(str_shuffle(str_repeat('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ',$l-2)),0,$l-2);
 
		return $coupon;
	}

# Kurteyki App

Simple Blog App.

![alt App Teyki](https://i.ibb.co/Prq3FY8/App-Teyki.png)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Fiture

* Blog

### Installing

Create Database On Phpmyadmin

```
http://localhost/phpmyadmin
```
Run XAMPP
Install Database

```
http://localhost/kurteyki
```

## Built With

* [CodeIgniter 3.11](https://codeigniter.com/)

## Authors

* **Riedayme** - [Riedayme](https://facebook.com/riedayme)

## Work List

* Coupon Code
* Multiple user

## Bug

* when delete, when multiple user.

## License

This project is licensed under the MIT License
