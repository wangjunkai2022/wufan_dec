.class public abstract Lorg/androidannotations/api/builder/e;
.super Lorg/androidannotations/api/builder/c;
.source "IntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/androidannotations/api/builder/e<",
        "TI;>;>",
        "Lorg/androidannotations/api/builder/c;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/androidannotations/api/builder/c;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/androidannotations/api/builder/e;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lorg/androidannotations/api/builder/e;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public category(Ljava/lang/String;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public data(Landroid/net/Uri;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;B)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "B)TI;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;C)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)TI;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;D)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TI;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;F)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)TI;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TI;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;J)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TI;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Landroid/os/Bundle;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")TI;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Landroid/os/Parcelable;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ")TI;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ")TI;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")TI;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;S)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S)TI;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[B)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)TI;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[C)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C)TI;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[D)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[D)TI;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[F)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[F)TI;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[I)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)TI;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[J)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)TI;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[Landroid/os/Parcelable;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/os/Parcelable;",
            ")TI;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[Ljava/lang/String;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[S)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[S)TI;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[S)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[Z)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z)TI;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    return-object p0
.end method

.method public extras(Landroid/content/Intent;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    return-object p0
.end method

.method public flags(I)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public get()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->context:Landroid/content/Context;

    return-object v0
.end method

.method public integerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public parcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public stringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public type(Ljava/lang/String;)Lorg/androidannotations/api/builder/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
