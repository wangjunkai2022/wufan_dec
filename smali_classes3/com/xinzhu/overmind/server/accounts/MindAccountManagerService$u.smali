.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
.super Ljava/lang/Object;
.source "MindAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "u"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->b:I

    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->b:I

    return p0
.end method
