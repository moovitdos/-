.class public final Lcom/sprd/classichome/util/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# static fields
.field public static ICON_SCAN_STEP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x3

    sput v0, Lcom/sprd/classichome/util/IconUtilities;->ICON_SCAN_STEP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static get3rdPartyAppIcon(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f020000

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, "background":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 183
    .local v9, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 184
    .local v2, "h":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070019

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 185
    .local v10, "w_2":I
    move v3, v10

    .line 187
    .local v3, "h_2":I
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/sprd/classichome/util/IconUtilities;->getCircleBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 188
    .local v4, "iconBitmap":Landroid/graphics/Bitmap;
    const-string v11, "duoqin"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "iconBitmap w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; iconBitmap h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    int-to-float v11, v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v11, v12

    .line 193
    .local v7, "scaleFactor":F
    const/4 v11, 0x1

    invoke-static {v4, v7, v11}, Lcom/sprd/classichome/util/IconUtilities;->transform(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 195
    .local v8, "scaledIcon":Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 196
    .local v5, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 198
    .local v6, "paint":Landroid/graphics/Paint;
    sub-int v11, v9, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-int v12, v2, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v1, v8, v11, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 200
    const/16 v11, 0x1f

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->save(I)I

    .line 201
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 202
    return-object v5
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "cornerRadius"    # I
    .param p2, "recycle"    # Z

    .prologue
    const/4 v11, 0x0

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 207
    .local v9, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 208
    .local v2, "h":I
    if-le v9, v2, :cond_1

    move v3, v2

    .line 209
    .local v3, "l":I
    :goto_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 210
    .local v4, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, -0x1

    .line 213
    .local v1, "color":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 214
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v11, v11, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 215
    .local v6, "rect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 216
    .local v7, "rectF":Landroid/graphics/RectF;
    int-to-float v8, p1

    .line 219
    .local v8, "roundPx":F
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 221
    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    invoke-virtual {v0, v7, v8, v8, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 224
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 225
    invoke-virtual {v0, p0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    :cond_0
    return-object v4

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "color":I
    .end local v3    # "l":I
    .end local v4    # "output":Landroid/graphics/Bitmap;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v7    # "rectF":Landroid/graphics/RectF;
    .end local v8    # "roundPx":F
    :cond_1
    move v3, v9

    .line 208
    goto :goto_0
.end method

.method public static transform(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "scaleFactor"    # F
    .param p2, "recycle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 233
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 234
    .local v5, "scaler":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 235
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 236
    .local v7, "b1":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    if-eq v7, p0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    :cond_0
    return-object v7
.end method
