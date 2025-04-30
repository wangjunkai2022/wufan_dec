.class public Lorg/repackage/a/a/a/a/b$b;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/repackage/a/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final a:Lorg/repackage/a/a/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/repackage/a/a/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/repackage/a/a/a/a/b;-><init>(Lorg/repackage/a/a/a/a/b$a;)V

    sput-object v0, Lorg/repackage/a/a/a/a/b$b;->a:Lorg/repackage/a/a/a/a/b;

    return-void
.end method
