.class Lcom/join/android/app/common/http/d$g;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/d;->U(Ljava/lang/Object;Lcom/join/android/app/common/http/d$p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/d$p;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/join/android/app/common/http/d;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$g;->c:Lcom/join/android/app/common/http/d;

    iput-object p2, p0, Lcom/join/android/app/common/http/d$g;->a:Lcom/join/android/app/common/http/d$p;

    iput-object p3, p0, Lcom/join/android/app/common/http/d$g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$g;->a:Lcom/join/android/app/common/http/d$p;

    iget-object v1, p0, Lcom/join/android/app/common/http/d$g;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/http/d$p;->e(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/http/d$g;->a:Lcom/join/android/app/common/http/d$p;

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d$p;->b()V

    return-void
.end method
