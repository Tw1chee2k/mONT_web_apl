<div class="modal-body">
    <?php if (!empty($_SESSION['cart'])): ?>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Image</th>
                <th scope="col">Title</th>
                <th scope="col">Price</th>
                <th scope="col">Qty</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($_SESSION['cart'] as $id => $item): ?>
                <tr>
                    <td><a href="#"><img src="ammage/<?= $item['img'] ?>" alt="<?= $item['title'] ?>"></a></td>
                    <td><a href="#"><?= $item['title'] ?></a></td>
                    <td><?= $item['price'] ?></td>
                    <td><?= $item['qty'] ?></td>
                </tr>
            <?php endforeach; ?>
            <tr>
                <td colspan="4" align="right">Number of products: <span id="modal-cart-qty"><?= $_SESSION['cart.qty'] ?></span>
                    <br> The amount: <?= $_SESSION['cart.sum'] ?> $
                </td>
            </tr>
            </tbody>
        </table>
    <?php else: ?>
        <p>The basket is empty...</p>
    <?php endif; ?>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    <?php if (!empty($_SESSION['cart'])): ?>
        <form action="hz.html">
            <button class="btn btn-primary">Place an order</button>
        </form>
        <button type="button" class="btn btn-danger" id="clear-cart">Empty the basket</button>
    <?php endif; ?>
</div>