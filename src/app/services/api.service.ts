import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(private http:HttpClient) { }

  test(){
    this.http.get("http://127.0.0.1:4848").subscribe((response)=>{
      console.log(response);
    })
  }
}
