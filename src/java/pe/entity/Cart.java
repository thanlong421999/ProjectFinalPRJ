
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thanl
 */
public class Cart {

    List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public int getQuantityById(String id) {
        return getItemById(id).getQuantity();
    }

    public Item getItemById(String id) {
        for (Item item : items) {
            if (item.getProduct().getId().equalsIgnoreCase(id)) {
                return item;
            }
        }
        return null;
    }

    public void addItem(Item t) {
        if (getItemById(t.getProduct().getId()) != null) {
            Item m = getItemById(t.getProduct().getId());
            m.setQuantity((m.getQuantity() + t.getQuantity()));
            
        } else {
            items.add(t);
        }
    }

    public Float getTotal() {
        Float t = 0.0f;
        for (Item item : items) 
            t += item.getQuantity() *item.getProduct().getPrice();
            return t;
        }
        
    
    public void removeItem(String id){
        if(getItemById(id)!=null)
        items.remove(getItemById(id));
    }
    
}
