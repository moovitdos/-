package com.sprd.common.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.widget.GridView;
import com.sprd.PlatformHelper;

/* loaded from: classes.dex */
public class LoopGridView extends GridView {
    private boolean isLoop;

    public LoopGridView(Context context) {
        super(context);
        this.isLoop = true;
    }

    public LoopGridView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.isLoop = true;
    }

    public LoopGridView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.isLoop = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return super.dispatchTouchEvent(ev);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        boolean result = false;
        switch (keyCode) {
            case 19:
                result = isNeedFocusToEnd();
                break;
            case 20:
                result = isNeedFocusToStart();
                break;
            case 21:
                if (!PlatformHelper.isLayoutRtl(this)) {
                    result = focusToPreItem();
                    break;
                } else {
                    result = focusToNextItem();
                    break;
                }
            case 22:
                if (!PlatformHelper.isLayoutRtl(this)) {
                    result = focusToNextItem();
                    break;
                } else {
                    result = focusToPreItem();
                    break;
                }
        }
        return result || super.onKeyDown(keyCode, event);
    }

    private boolean focusToNextItem() {
        boolean result = false;
        boolean isLast = isAnyLineLast();
        int nextPos = getSelectedItemPosition() + 1;
        if (nextPos < getCount() && isLast) {
            setSelection(nextPos);
            result = true;
        }
        if (this.isLoop && nextPos == getCount()) {
            setSelection(0);
            result = true;
        }
        if (result) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(66));
        }
        return result;
    }

    private boolean focusToPreItem() {
        boolean result = false;
        boolean isFirst = isAnyLineFirst();
        int nextPos = getSelectedItemPosition() - 1;
        if (nextPos >= 0 && isFirst) {
            setSelection(nextPos);
            result = true;
        }
        if (this.isLoop && nextPos == -1) {
            setSelection(getCount() - 1);
            result = true;
        }
        if (result) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(17));
        }
        return result;
    }

    private boolean isNeedFocusToStart() {
        if (!this.isLoop || !isLastLine()) {
            return false;
        }
        setSelection(0);
        playSoundEffect(SoundEffectConstants.getContantForFocusDirection(130));
        return true;
    }

    private boolean isNeedFocusToEnd() {
        if (!this.isLoop || !isFirstLine()) {
            return false;
        }
        setSelection(getCount() - 1);
        playSoundEffect(SoundEffectConstants.getContantForFocusDirection(33));
        return true;
    }

    private boolean isAnyLineLast() {
        int curPos = getSelectedItemPosition();
        int columnNum = getNumColumns();
        return columnNum != 0 && (curPos + 1) % columnNum == 0;
    }

    private boolean isAnyLineFirst() {
        int curPos = getSelectedItemPosition();
        int columnNum = getNumColumns();
        return columnNum != 0 && curPos % columnNum == 0;
    }

    private boolean isFirstLine() {
        return getSelectedItemPosition() < getNumColumns();
    }

    private boolean isLastLine() {
        int count = getCount();
        int select = getSelectedItemPosition();
        int remainder = count % getNumColumns();
        if (remainder == 0) {
            remainder = getNumColumns();
        }
        return count - select <= remainder;
    }
}
