.class Lcom/BaseFragmentActivity$k;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseFragmentActivity;->getPermison([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/g<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$k;->a:Lcom/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    invoke-virtual {p0, p1}, Lcom/BaseFragmentActivity$k;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    return-void
.end method
