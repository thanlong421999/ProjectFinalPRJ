/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.entity;

/**
 *
 * @author thanl
 */
public class Object {
    String id,name,link,brand;
     Float price;
     int count;

    public Object() {
    }

    public Object(String id, String name, String link, String brand, Float price, int count) {
        this.id = id;
        this.name = name;
        this.link = link;
        this.brand = brand;
        this.price = price;
        this.count = count;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", link=" + link + ", brand=" + brand + ", price=" + price + ", count=" + count + '}';
    }
     
        
     
}
