.class public Lcom/join/android/app/common/http/d$i;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/d;


# direct methods
.method public constructor <init>(Lcom/join/android/app/common/http/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$i;->a:Lcom/join/android/app/common/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/http/d$i;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/http/d$i;->e(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private e(Landroid/widget/ImageView;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$i;->a:Lcom/join/android/app/common/http/d;

    invoke-static {v0}, Lcom/join/android/app/common/http/d;->i(Lcom/join/android/app/common/http/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/android/app/common/http/d$i$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/android/app/common/http/d$i$b;-><init>(Lcom/join/android/app/common/http/d$i;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public b(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/join/android/app/common/http/d$i;->c(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 8

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/android/app/common/http/d$i;->a:Lcom/join/android/app/common/http/d;

    invoke-static {v1}, Lcom/join/android/app/common/http/d;->n(Lcom/join/android/app/common/http/d;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 5
    new-instance v7, Lcom/join/android/app/common/http/d$i$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/join/android/app/common/http/d$i$a;-><init>(Lcom/join/android/app/common/http/d$i;Landroid/widget/ImageView;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public d(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/join/android/app/common/http/d$i;->c(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
