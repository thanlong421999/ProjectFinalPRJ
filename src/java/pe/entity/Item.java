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
public class Item {
    Object object;
    int quantity;
    Float price;

    public Item() {
    }

    public Item(Object object, int quantity, Float price) {
        this.object = object;
        this.quantity = quantity;
        this.price = price;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }

    

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Item{" + "object=" + object + ", quantity=" + quantity + ", price=" + price + '}';
    }



    
    
}
