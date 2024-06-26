import { Component, OnInit } from '@angular/core';
import { PaymentService } from 'src/app/shared/services/payment.service';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
constructor(private _PaymentService:PaymentService,private sanitizer: DomSanitizer){}



handlepaymentannually():void{
  this._PaymentService.checkoutannually().subscribe({
    next:(response)=>{
      console.log(response.url)
      window.open(response.url,'_self')
    }
 })
}

handlepaymentmonthly():void{
  this._PaymentService.checkoutmonthly().subscribe({
    next:(response)=>{
      console.log(response.url)
      window.open(response.url,'_self')
    }
 })
}


email: any;

ngOnInit() {
  // localStorage.setItem('etoken', 'nmbvhmv');
  // console.log(localStorage.getItem('etoken'))
  console.log(this._PaymentService.token)
  const email = 'RealeStateEase@gmail.com';
  this.email = this.sanitizer.bypassSecurityTrustHtml(email);
}


}
