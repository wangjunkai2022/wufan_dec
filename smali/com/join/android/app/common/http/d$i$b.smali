.class Lcom/join/android/app/common/http/d$i$b;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/d$i;->e(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Lcom/join/android/app/common/http/d$i;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/d$i;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$i$b;->c:Lcom/join/android/app/common/http/d$i;

    iput-object p2, p0, Lcom/join/android/app/common/http/d$i$b;->a:Landroid/widget/ImageView;

    iput p3, p0, Lcom/join/android/app/common/http/d$i$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$i$b;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/join/android/app/common/http/d$i$b;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
