SELECT
    Books.Title,
    COUNT(OrderDetails.BookID) AS TotalSales
FROM
    Books
JOIN OrderDetails ON Books.BookID = OrderDetails.BookID
GROUP BY
    Books.Title
ORDER BY
    TotalSales DESC
LIMIT 10;
