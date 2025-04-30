.class public Lcom/xinzhu/overmind/server/pm/installer/f;
.super Ljava/lang/Object;
.source "RemoveUserExecutor.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/installer/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "option",
            "userId"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 2
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    .line 3
    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->x(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    const/4 p1, 0x0

    return p1
.end method
