.class public Lcom/android/settings/bluetooth/BluetoothProgressCategory;
.super Lcom/android/settings/ProgressCategory;
.source "BluetoothProgressCategory.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const v0, 0x7f090080

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->context:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategory;->onBindView(Landroid/view/View;)V

    .line 47
    return-void
.end method
