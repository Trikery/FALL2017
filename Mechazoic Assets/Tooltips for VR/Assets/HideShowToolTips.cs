using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class HideShowToolTips : MonoBehaviour {

	public GameObject TooltipRight;
	public GameObject TooltipLeft;

	private bool TipsOn;

	public static Action ToolTipSwitch;

	public void Start (){
		ToolTipSwitch += ToolTipSwitchHandler;
	}

	private void ToolTipSwitchHandler(){
		CheckToolTips ();
	}

	public IEnumerator CheckToolTips(){
		yield return new WaitForSeconds (1f);
		if (TipsOn) {
			TooltipRight.SetActive (false);
			TooltipLeft.SetActive (false);
			TipsOn = false;
		}
		yield return new WaitForSeconds (4f);
		if (!TipsOn) {
			TooltipRight.SetActive (true);
			TooltipLeft.SetActive (true);
			TipsOn = true;
		}

	}

}
