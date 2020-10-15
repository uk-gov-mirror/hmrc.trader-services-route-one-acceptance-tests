/*
 * Copyright 2020 HM Revenue & Customs
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package uk.gov.hmrc.test.ui.cucumber.stepdefs

import io.cucumber.scala.{EN, ScalaDsl}
import uk.gov.hmrc.test.ui.pages.ContactDetailsPage


class ContactDetailsStepDefs extends ContactDetailsPage with ScalaDsl with EN {

  Then("""^the user is on the (.*) contact details page"""){ (Journey: String) =>

    Journey match {
      case "Import" => confirmUrl(urlImportContact)
      case "Export" => confirmUrl(urlExportContact)
    }
    verifyHeading(headingContactInfo)
  }

  Then("""^the user enters a name "(.*)"$""") {
    (name: String) =>
      writeById("emailAddress", name)
  }

  Then("""^the user enters an email address "(.*)"$""") {
    (email: String) =>
      writeById("emailAddress", email)
  }

  Then("""^the user enters a phone number "(.*)"$""") {
    (phone: String) =>
      writeById("phoneNumber", phone)
  }
  }

