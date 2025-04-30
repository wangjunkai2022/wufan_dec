.class public interface abstract Lcom/xinzhu/overmind/server/pm/c;
.super Ljava/lang/Object;
.source "IMindPackageInstallerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/c$b;,
        Lcom/xinzhu/overmind/server/pm/c$a;
    }
.end annotation


# virtual methods
.method public abstract installPackageAsExist(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract installPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uninstallPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "removeApp",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePackage(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
