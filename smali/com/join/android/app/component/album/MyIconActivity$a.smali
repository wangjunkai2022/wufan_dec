.class Lcom/join/android/app/component/album/MyIconActivity$a;
.super Ljava/lang/Object;
.source "MyIconActivity.java"

# interfaces
.implements Lcom/join/android/app/component/album/lib/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyIconActivity;->Z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/MyIconActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyIconActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->F0(Lcom/join/android/app/component/album/MyIconActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-static {p1}, Lcom/join/android/app/component/album/MyIconActivity;->G0(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/component/album/a;->h()V

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-static {p1}, Lcom/join/android/app/component/album/MyIconActivity;->E0(Lcom/join/android/app/component/album/MyIconActivity;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "ALL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/album/lib/a;

    invoke-static {p1, v0}, Lcom/join/android/app/component/album/MyIconActivity;->H0(Lcom/join/android/app/component/album/MyIconActivity;Lcom/join/android/app/component/album/lib/a;)Lcom/join/android/app/component/album/lib/a;

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-static {p1}, Lcom/join/android/app/component/album/MyIconActivity;->I0(Lcom/join/android/app/component/album/MyIconActivity;)V

    return-void
.end method
