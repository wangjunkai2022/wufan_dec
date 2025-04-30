.class Lcom/join/android/app/component/album/lib/b$a$a;
.super Ljava/lang/Object;
.source "ImageScaner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/b$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/join/android/app/component/album/lib/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/lib/b$a;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b$a$a;->a:Lcom/join/android/app/component/album/lib/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/android/app/component/album/lib/a;Lcom/join/android/app/component/album/lib/a;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->c()I

    move-result p1

    invoke-virtual {p2}, Lcom/join/android/app/component/album/lib/a;->c()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/component/album/lib/a;

    check-cast p2, Lcom/join/android/app/component/album/lib/a;

    invoke-virtual {p0, p1, p2}, Lcom/join/android/app/component/album/lib/b$a$a;->a(Lcom/join/android/app/component/album/lib/a;Lcom/join/android/app/component/album/lib/a;)I

    move-result p1

    return p1
.end method
