//
//  PrivacyPolicy.swift
//  RyanToken.com
//
//  Created by Ryan Token on 7/16/25.
//

import Ignite

struct PrivacyPolicy: StaticPage {
    var title = "Privacy Policy"

    var body: some HTML {
        HeaderText("Privacy Policy")

        SecondaryHeaderText("Long story short: I don't collect any of your data.")

        Divider()

        SubheaderText("Basics")

        Text("Your privacy is critically important to me. Your data is your own. None of my apps collect any personal data – all of it lives locally on your device.")

        SubheaderText("Gathering of Personally-Identifying Information")

        Text("Neither <i>Hot Local Food</i>, nor <i>Outrank</i>, nor <i>CatchUp – Keep in Touch</i> transmits any of your contacts, location data, or any other data outside of the app.")

        SubheaderText("Protection of Certain Personally-Identifying Information")

        Text("No Personally-Identifying Information is transmitted to external locations when using <i>Hot Local Food</i>, <i>Outrank</i>, or <i>CatchUp – Keep in Touch</i>.")

        SubheaderText("Business Transfers")

        Text("If <i>Hot Local Food</i>, <i>Outrank</i>, or <i>CatchUp – Keep in Touch</i>, substantially all of either of their assets, were acquired, or in the unlikely event that <i>Hot Local Food</i>, <i>Outrank</i>, or <i>CatchUp – Keep in Touch</i> goes out of business or enters bankruptcy, no information would be acquired by the third party. You acknowledge that such transfers may occur, but understand that no personal information would be acquired.")

        SubheaderText("Privacy Policy Changes")

        Text("Although most changes are likely to be minor, we may change our Privacy Policy from time to time, and in our sole discretion. I encourage visitors to frequently check this page for any changes to the Privacy Policy. Your continued use of the <i>Hot Local Food</i>, <i>Outrank</i>, or <i>CatchUp – Keep in Touch</i> applications after any change in this Privacy Policy will constitute your acceptance of such change.")

        SubheaderText("Limited Warranties")

        Text("We do not warrant the completeness or accuracy of the information published on this website; nor do we commit to ensuring that the website remains available or that the material on the website is kept up to date.")

        Text("To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to this website and the use of this website (including, without limitation, any warranties implied by law in respect of satisfactory quality, fitness for purpose and/or the use of reasonable care and skill).")

        SubheaderText("Indemnity")

        Text("You hereby indemnify me and undertake to keep me indemnified against any losses, damages, costs, liabilities and expenses (including, without limitation, legal expenses and any amounts paid by me to a third party in settlement of a claim or dispute on the advice of our legal advisers) incurred or suffered by me arising out of any breach by you of any provision of these terms of use, or arising out of any claim that you have breached any provision of these terms of use.")

        Text(markdown: "**Adapted from the [automattic.com privacy policy](https://automattic.com/privacy/) under a [Creative Commons Sharealike license](https://creativecommons.org/licenses/by-sa/2.5/)**")
    }
}
