/*
Problem: 1164_Product_Price_at_a_Given_Date
Platform: LeetCode
Language: SQL Server
*/

-- Write your solution here

select ProductsNotChanged.product_id,isnull(ProductsChanged.new_price,10) as 'price'
from(
        select distinct product_id
        from Products
)as ProductsNotChanged
    
left join(
    select product_id,new_price
    from(
        select *,row_number()over(partition by product_id order by change_date desc)as rn
        from Products
        where change_date<='2019-08-16'
    )as newTable
where rn=1)as ProductsChanged

on ProductsChanged.product_id=ProductsNotChanged.product_id