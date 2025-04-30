.class public final Lcom/xinzhu/overmind/server/f$a;
.super Ljava/lang/Object;
.source "MindSystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:[I

.field public c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "perUser"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/f$a;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/xinzhu/overmind/server/f$a;->c:Z

    return-void
.end method
