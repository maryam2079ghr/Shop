<?php
$stmt = $pdo->prepare('SELECT * FROM products ORDER BY date_added DESC LIMIT 4');
$stmt->execute();
$recently_added_products = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<?php
$stmt = $pdo->prepare('SELECT * FROM products ORDER BY date_added DESC LIMIT 4');
$stmt->execute();
$recently_added_products = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<?=template_header('صفحه اصلی')?>

<div class="featured">
    <h2>ساعت چی</h2>
    <p>زیباترین و خوش استیل ترین ساعت ها</p>
</div>
<div class="recentlyadded content-wrapper">
    <h2>محصولات جدید</h2>
    <div class="products">
        <?php foreach ($recently_added_products as $product): ?>
        <a href="index.php?page=product&id=<?=$product['id']?>" class="product">
            <img src="imgs/<?=$product['img']?>" width="200" height="200" alt="<?=$product['name']?>">
            <span class="name"><?=$product['name']?></span>
            <span class="price">
             <?=$product['price']?> تومان
             <?php if ($product['rrp'] > 0): ?>
                <span class="rrp"><?=$product['rrp']?>  تومان</span>
                <?php endif; ?>
                 </span>
        </a>
        <?php endforeach; ?>
    </div>
</div>

<?=template_footer()?>