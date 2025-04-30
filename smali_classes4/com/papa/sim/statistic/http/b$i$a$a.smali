.class Lcom/papa/sim/statistic/http/b$i$a$a;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/b$i$a;->b(Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/papa/sim/statistic/http/b$i$a;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/b$i$a;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$i$a$a;->b:Lcom/papa/sim/statistic/http/b$i$a;

    iput-object p2, p0, Lcom/papa/sim/statistic/http/b$i$a$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$i$a$a;->b:Lcom/papa/sim/statistic/http/b$i$a;

    iget-object v0, v0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$i$a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
